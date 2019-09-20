class DivesController < ApplicationController
    before_action :redirect_user
    before_action :set_user, only: [:new, :show, :index, :create, :edit, :update]
    before_action :set_dive, only: [:show, :destroy, :edit, :update]

    def new
        @dive = Dive.new
    end

    def create
        @dive = Dive.new(dive_params)
        @dive.user.total_dives += 1
        if @dive.save
            @dive.user.save
            redirect_to @dive
        else
            flash[:error] = "Dive Site and Dive Shop are required"
            render :new
            flash.clear
        end
    end

    def edit
    end

    def update
        if @dive.update(dive_params)
            redirect_to @dive
        else
            render :new
        end
    end

    def show
    end

    def index
        @dives = @user.dives.order(date: :desc)
        @top_divers = User.all.sort_by {|user| -user.total_dives}
        @top_divesites = Divesite.all.sort_by {|site| -site.dives.count}
    end

    def destroy
        @user = @dive.user
        @dive.delete
        redirect_to dives_path
    end

  private

    def dive_params
        params.require(:dive).permit(:user_id, :diveshop_id, :divesite_id, :date, :water_T, :air_T, :depth, :description, equipment_ids: [], marineanimal_ids: [])
    end

    def set_user
        @user = User.find(session[:user_id])
    end

    def set_dive
        @dive = Dive.find(params[:id])
    end

end

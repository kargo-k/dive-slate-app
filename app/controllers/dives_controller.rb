class DivesController < ApplicationController
    before_action :redirect_user, only: [:new, :create, :destroy, :index]

    def new
        @user = this_user
        @dive = Dive.new
    end

    def create
        @dive = Dive.new(dive_params)
        @dive.user.total_dives += 1
        if @dive.save
            @dive.user.save
            redirect_to show_dive_path(@dive)
        else
            render :new
        end
    end

    def show
        @dive = this_dive
    end

    def index
        @user = this_user
        @top_divers = User.all.sort_by {|user| -user.total_dives}
        @top_divesites = Divesite.all.sort_by {|site| -site.dives.count}
    end

    def destroy
        @dive = this_dive
        @user = @dive.user
        @dive.delete
        redirect_to divers_dives_path(@user)
    end

  private

    def dive_params
        params.require(:dive).permit(:user_id, :diveshop_id, :divesite_id, :date, :time, :water_T, :air_T, :depth, :description, equipment_ids: [], marineanimal_ids: [])
    end

    def this_user
        User.find(session[:user_id])
    end

    def this_dive
        Dive.find(params[:id])
    end

end

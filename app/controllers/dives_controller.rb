class DivesController < ApplicationController

    def new
        @user = User.find(params[:id])
        @dive = Dive.new
    end

    def create
        # byebug
        @dive = Dive.new(dive_params)
        if @dive.save
            redirect_to show_dive_path(@dive)
        else
            render :new
        end
    end

    def show
        @dive = Dive.find(params[:id])
    end

    def index
        @user = User.find(params[:id])
    end

    def destroy
        @user = @dive.user
        @dive = Dive.find(params[:id])
        @dive.delete
        redirect_to divers_dives_path(@user)
    end

  private

    def dive_params
        params.require(:dive).permit(:user_id, :diveshop_id, :divesite_id, :date, :time, :water_T, :air_T, :depth, :description, equipment_ids: [])
    end

end

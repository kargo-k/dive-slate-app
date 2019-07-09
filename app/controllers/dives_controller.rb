class DivesController < ApplicationController
    def new
        @dive = Dive.new
    end

    def create
        @dive = Dive.new(dive_params)
        # byebug
        if @dive.save
            redirect_to all_dives_path(@dive.user)
        else
            render :new
        end
    end

    def show
        @dive = Dive.find(params[:id])
    end

    def index
        # byebug
        @user = User.find(params[:id])

        
    end
    
    private

        def dive_params
            params.require(:dive).permit(:user_id, :diveshop_id, :divesite_id, :date, :time, :water_T, :air_T, :depth, :description)
        end

end

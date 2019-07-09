class DivesController < ApplicationController
    def new
        @dive = Dive.new
    end

    def create
        @dive = Dive.new(dive_params)
        if @dive
            redirect_to @dive
        else
            render :new
        end
    end

    private

        def dive_params
            params.require(:dive).permit(:user_id, :diveshop_id, :divesite_id, :date, :time, :water_T, :air_T, :depth, :description)
        end

end

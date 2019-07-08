class DivesitesController < ApplicationController
    def show
        @divesite = Divesite.find(params[:id])
    end
end

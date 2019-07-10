class DivesitesController < ApplicationController
    def show
        @divesite = Divesite.find(params[:id])
    end

    def index
        @divesites = Divesite.all
    end

    def top_5_sites
        
    end
end

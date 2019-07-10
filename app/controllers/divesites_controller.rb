class DivesitesController < ApplicationController
    def show
        @divesite = Divesite.find(params[:id])
    end

    def index
        @divesites = Divesite.all
    end

    def sort
        @divesites = Divesite.all.sort_by {|site| -site.dives.count}
        render :index
    end

end

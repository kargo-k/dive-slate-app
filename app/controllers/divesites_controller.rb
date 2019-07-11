class DivesitesController < ApplicationController
    before_action :redirect_user
    before_action :set_user, only: [:sort, :index, :show]

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

    private

        def set_user
            @user = User.find(session[:user_id])
        end
end

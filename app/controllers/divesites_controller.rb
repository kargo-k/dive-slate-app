class DivesitesController < ApplicationController
    before_action :redirect_user
    
    def show
        @user = User.find(session[:user_id])
        @divesite = Divesite.find(params[:id])
    end

    def index
        @user = User.find(session[:user_id])
        @divesites = Divesite.all
    end

    def sort
        @user = User.find(session[:user_id])
        @divesites = Divesite.all.sort_by {|site| -site.dives.count}
        render :index        
    end
end

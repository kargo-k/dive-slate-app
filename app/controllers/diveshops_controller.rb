class DiveshopsController < ApplicationController
    before_action :redirect_user
    before_action :set_user

    def show
        @diveshop = Diveshop.find(params[:id])
    end

    def index
        @diveshops = Diveshop.all 
    end

    private

    def set_user
        @user = User.find(session[:user_id])
    end
end

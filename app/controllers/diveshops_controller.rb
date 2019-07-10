class DiveshopsController < ApplicationController
    def show
        @user = User.find(session[:user_id])
        @diveshop = Diveshop.find(params[:id])
    end

    def index
        @user = User.find(session[:user_id])
        @diveshops = Diveshop.all 
    end
end

class DiveshopsController < ApplicationController
    def show
        @diveshop = Diveshop.find(params[:id])
    end

    def index
        @diveshops = Diveshop.all 
    end
end

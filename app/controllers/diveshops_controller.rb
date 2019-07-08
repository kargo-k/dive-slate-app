class DiveshopsController < ApplicationController
    def show
        @diveshop = Diveshop.find(params[:id])
    end
end

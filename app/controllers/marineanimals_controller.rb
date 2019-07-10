class MarineanimalsController < ApplicationController

  def index
    @marineanimals = Marineanimal.all
  end

  def show
      @marineanimal = Marineanimal.find(params[:id])
  end
end

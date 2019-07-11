class MarineanimalsController < ApplicationController

  def index
    @marineanimals = Marineanimal.all
  end

  def show
      @marineanimal = Marineanimal.find(params[:id])
  end

  def new
    @marineanimal = Marineanimal.new
  end

  def create
    @marineanimal = Marineanimal.new(params.require(:marineanimal).permit(:name, :url))
    @marineanimal.save
    redirect_to marineanimal_path(@marineanimal)
  end
end

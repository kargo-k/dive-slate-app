class MarineanimalsController < ApplicationController
  before_action :redirect_user
  before_action :set_user

  def index
    @marineanimals = Marineanimal.all
  end

  def show
      @marineanimal = Marineanimal.find(params[:id])
      @marine = Marineanimal.all
  end

  def new
    @marineanimal = Marineanimal.new
  end

  def create
    @marineanimal = Marineanimal.new(params.require(:marineanimal).permit(:name, :url))
    @marineanimal.save
    redirect_to marineanimal_path(@marineanimal)
  end

  private

  def set_user
    @user = User.find(session[:user_id])
  end

end

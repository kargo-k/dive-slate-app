class UsersController < ApplicationController
  before_action :user_params, only: [:create]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end

    def edit
      @user = User.find(params[:id])
    end

    def update
      @user = User.find(params[:id])
      if @user = User.update(user_path)
        redirect_to user_path(@user)
      else
        render :edit
      end 
    end

  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :name, :certification, :age, :country, :total_dives)
  end
end

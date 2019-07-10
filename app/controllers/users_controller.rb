class UsersController < ApplicationController
  before_action :user_params, only: [:create, :update]
  before_action :redirect_user, only: [:index, :show, :edit, :update, :destroy]

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
    if @user.save && user_params[:password] == user_params[:password_confirmation]
      redirect_to user_path(@user)
    else
      if !@user.errors.messages[:username].empty?
        flash[:username_error] = true
      end
      if !@user.errors.messages[:password_confirmation].empty?
        flash[:password_error] = true
      end
      render :new
      flash.clear
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.delete
    redirect_to login_path
  end


private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :name, :certification, :age, :country, :total_dives)
  end
end

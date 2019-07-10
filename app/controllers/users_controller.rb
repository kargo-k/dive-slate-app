class UsersController < ApplicationController
  before_action :user_params, only: [:create, :update]
  before_action :redirect_user, only: [:index, :show, :edit, :update, :destroy, :confirm]

  def index
    @user = this_user
    if @user.username == "karen" || @user.username == "danie"
      @users = User.all
    else
      redirect_to user_path(user)
    end
  end

  def show
    @user = this_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save && user_params[:password] == user_params[:password_confirmation]
      session[:user_id] = @user.id
      redirect_to edit_user_path(@user)
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
    @user = this_user
  end

  def confirm
    @user = this_user
  end

  def update
    @user = this_user
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      byebug
      render :edit
    end
  end

  def destroy
    @user = this_user
    @user.delete
    session.clear
    redirect_to login_path
  end


private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :name, :certification, :age, :country, :total_dives)
  end

  def this_user
    User.find(session[:user_id])
  end

end

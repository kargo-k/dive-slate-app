class UsersController < ApplicationController
  before_action :user_params only: [:new]
  def index
    @users = User.all
  end

  def new
    @user = User.new(user_params)
    @user.save
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :name, :certification, :age, :country, :total_dives)
  end
end

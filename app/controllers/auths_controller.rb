class AuthsController < ApplicationController

  def login
  end

  def create
    user = User.find_by(username: params[:auth][:username])
    if user && user.authenticate(params[:auth][:password])
      session[:user_id] = user.id
      redirect_to divers_dives_path(user)
    else
      render :login
      byebug
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end

end

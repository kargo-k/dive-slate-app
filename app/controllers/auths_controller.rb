class AuthsController < ApplicationController

  def login
    if session[:user_id] != nil
      user = User.find(session[:user_id])
      redirect_to dives_path
    end
  end

  def create
    user = User.find_by(username: params[:auth][:username])
    if user && user.authenticate(params[:auth][:password])
      session[:user_id] = user.id
      redirect_to dives_path
    else
      flash[:error] = "Hm, that doesn't look right.  Please try again."
      render :login
      flash.clear
    end
  end

  def destroy
    session.clear
    flash.clear
    redirect_to login_path
  end

end

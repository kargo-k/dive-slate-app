class ApplicationController < ActionController::Base
    helper_method :logged_in?, :redirect_user

    def redirect_user
        if !logged_in?
            redirect_to login_path
        end
    end

    def logged_in?
        !!session[:user_id]
    end
    
end

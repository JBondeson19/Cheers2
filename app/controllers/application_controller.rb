class ApplicationController < ActionController::Base

    #skip_before_action :verify_authenticity_token

    before_action :logged_in?

    def logged_in?
        if !session[:user_id]
            redirect_to '/login'
        end
    end
end

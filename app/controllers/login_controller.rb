class LoginController < ApplicationController

    skip_before_action :logged_in?, only: [:new, :create]

    def new
    end

    def create
       @user = User.find_by(email: params[:email])
       if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to @user
       else
        redirect_to '/login'
       end
    end

    def destroy
        session.delete(:user_id)
        flash[:notice] = "successfully logged out"
        redirect_to '/'
    end
end

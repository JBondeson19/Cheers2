class UsersController < ApplicationController

    skip_before_action :logged_in?, only: [:new, :create]

    def new
        #render signup form
    end

    def create 
        @user = User.new(user_params)

        if @user.valid?
            @user.save
            redirect_to @user
        else
            redirect_to "/signup"
        end
    end

    def show
        @user = User.find(params[:id])
        if @user(session[:id]) == @user(params[:id])

    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to '/'
    end


    private

    def user_params
        params.permit(:name, :email, :password, :password_confirmation)
    end
end

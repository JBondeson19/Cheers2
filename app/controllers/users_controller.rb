class UsersController < ApplicationController

    skip_before_action :logged_in?, only: [:new, :create]

    def new
        #render signup form
        @user = User.new
    end

    def create 
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            redirect_to @user
        else
            render :new
        end
    end

    def show
        @user = User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to user_path(@user.id)
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

class SessionsController < ApplicationController

    def login_page
    end

    def login
        name = params[:name]
        email = params[:email]
        user = User.find_by(name: name)
    redirect_to drinks_path
        if user 
            cookies[:current_user] = User.name
        else
            render :login_page_pathrai
        end
    end
end

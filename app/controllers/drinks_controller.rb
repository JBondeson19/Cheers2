class DrinksController < ApplicationController

    skip_before_action :logged_in?, only: [:index]

    def index
        @drinks = Drink.all
        render :index
    end

    def show
        @drink = Drink.find(params[:id])
    end

    def new
        @new_drink = Drink.new
    end

    def create
        @new_drink = Drink.new(drink_params)
        if @new_drink.valid?
            @new_drink.save
            redirect_to drink_path(@new_drink)
        else
            render :new
        end
    end

    def edit
        @drink = Drink.find(params[:id])
    end

    def update
        @drink = Drink.find(params[:id])
        if @drink.valid?
            @drink.update(drink_params)
            redirect_to drink_path(@drink)
        else
            render :edit
        end
    end

    def destroy
        @drink = Drink.find(params[:id])
        @drink.destroy
        redirect_to user_path(session[:user_id])
    end

    def user
        @user = session[:user_id]
    end

    private 

    def drink_params
        params.permit(:name, :price, :alcohol, :classification, :user_id)
    end
    
end

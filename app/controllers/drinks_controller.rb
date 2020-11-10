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
        @new_drink = Drink.new()
    end

    def edit
    end

    def update
    end

    def drink_params
        params.permit
    end
    
end

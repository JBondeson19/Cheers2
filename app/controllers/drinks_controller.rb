class DrinksController < ApplicationController

    def index
        @drinks = Drink.all
        render :index
    end

    def show
        @drink = Drink.find(params[:id])
    end

    
end

class RelationshipsController < ApplicationController

    def new
        @relationship = Relationship.new
    end

    def create #add_friend - friend_id
        #bartender add_friend
        #bartender = session[:id]
        #friend = params[:id]
        @relationship = Relationship.create(bartender_id: session[:user_id], friend_id: params[:friend_id])
        redirect_to user_path(@relationship.bartender_id)
    end


 
end

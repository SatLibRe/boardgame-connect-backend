class UsersController < ApplicationController
    def index 
        users = User.all 
        render json: users.to_json(include: [:boardgames, :rooms])
    end 

    def create 
        user = User.new(name: params[:name], password: params[:password], zoom_id: params[:zoom_id], img_url: params[:img_url] )
        
        if user.save
            render json: user
        else 
            render json: {errors: user.errors.full_messages}
        end
    end 

    def show 
        user = User.find(params[:id])
        render json: user.to_json(include: [:boardgames])
    end 

    def showusersrooms
        user = User.find(params[:id])
        render json: user.rooms.to_json(include: [:users])
    end
    
    def destroy 
        user = User.find(params[:id])
        User.delete()
    end 

end

class UsersController < ApplicationController
    def index 
        users = User.all 
        render json: users.to_json(include: [:boardgames, :rooms])
    end 

    def create 
        user = User.new(name: params[:name], password: params[:password], zoom_id: params[:zoom_id] )
        
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

    private 

    def users_params 
        params.require(:user).permit(:name, :password, :img_url, :zoom_id)
    end 
end

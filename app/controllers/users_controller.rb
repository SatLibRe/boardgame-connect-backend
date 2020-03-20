class UsersController < ApplicationController
    def index 
        users = User.all 
        render json: users.to_json(include: [:boardgames])
    end 

    def create 
        user = User.create(user_params)
        
    end 

    def show 
        user = User.find(params[:id])
        render json: user.to_json(include: [:boardgames])
    end 
    
    def destroy 
        user = User.find(params[:id])
        User.delete()
    end 

    private 

    def users_params 
        params.require(:user).permit(:name, :password, :img_url)
    end 
end

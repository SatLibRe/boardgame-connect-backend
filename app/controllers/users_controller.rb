class UsersController < ApplicationController
    def index 
        users = User.all 
        render json: users
    end 

    def create 
        user = User.create(user_params)
        render json: user 
    end 

    def show 
        user = User.find(params[:id])
        render json: user
    end 
    
    def destroy 
        User = User.find(params[:id])
        User.delete()
    end 

    private 

    def users_params 
        params.require(:user).permit(:name, :password, :img_url)
    end 
end

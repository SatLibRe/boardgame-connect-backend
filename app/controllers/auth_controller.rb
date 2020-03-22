class AuthController < ApplicationController

def login
    user = User.find_by(name: auth_params[:name])
    if user && user.authenticate(auth_params[:password])
        render json: user
    else
        render json: {errors: "Username or Password is incorrect."}
    end
end

def auto_login
    user = User.find_by(id: request.headers["Authorization"])
    if user
        render json: user
    else
        render json: {errors: "Incorrect user id."}
    end
end

private

def auth_params 
    params.require(:auth).permit(:name, :password)
end 

end
class RoomsController < ApplicationController
    def index 
        rooms = Room.all 
        render json: rooms.to_json(include: [:boardgame, :users])
    end 

    def create 
        room = Room.create(room_params)
        render json: room 
    end 

    def show 
        room = Room.find(params[:id])
        render json: room
    end 
    
    def destroy 
        room = Room.find(params[:id])
        Room.delete()
    end 

    private 

    def rooms_params 
        params.require(:room).permit(:name, :host_id, :zoom_url)
    end 
end

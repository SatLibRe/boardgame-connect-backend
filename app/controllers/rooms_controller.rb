class RoomsController < ApplicationController
    def index 
        rooms = Room.all 
        render json: rooms.to_json(include: [:boardgame, :users, :messages])
    end 

    def create 
       
        room = Room.create(room_params)
        render json: room 
    end 

    def show 
        room = Room.find(params[:id])
        
        render json: room.to_json(include: [:users, :boardgame, :messages])
    end 

    def update
        room = Room.find(params[:id])
        room.update(room_params)
        
    end
    
    def destroy 
        room = Room.find(params[:id])
        Room.delete()
    end 

    private 

    def room_params 
        params.require(:room).permit(:name, :host_id, :zoom_url, :boardgame_id, :maxplayers)
    end 
end

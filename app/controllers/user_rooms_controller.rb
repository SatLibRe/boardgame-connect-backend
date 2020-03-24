class UserRoomsController < ApplicationController
    def index 
        user_rooms = UserRoom.all 
        render json: user_rooms
    end 

    def create 
         user_room = UserRoom.new(user_room_params)
         if user_room.save
            puts "---------------------------------------------------------------------"
            puts user_room
            chat_room = Room.find(user_room.room_id)
            puts "---------------------------------------------------------------------"
            puts chat_room
            RoomsChannel.broadcast_to(chat_room, user_room)
            # render json: message
         else
            render json: {errors: message.errors.full_messages}, status: 422
         end

        # user_room = UserRoom.create(user_room_params)
        # render json: user_room 
    end 

    def show 
        user_room = UserRoom.find(params[:id])
        render json: user_room
    end 
    
    def destroy 
        user_room = UserRoom.find(params[:id])
        UserRoom.delete()
    end 

    private 

    def user_room_params 
        params.require(:user_room).permit(:user_id, :room_id)
    end 
end

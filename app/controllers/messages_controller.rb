class MessagesController < ApplicationController

def create 
         message = Message.new(messages_params)
         if message.save
            chat_room = Room.find(message.room_id)
            RoomsChannel.broadcast_to(chat_room, message)
            # render json: message
         else
            render json: {errors: message.errors.full_messages}, status: 422
         end
    end 

    private

    def messages_params
        params.require(:message).permit(:user_id, :message_content, :room_id)
    end

end
class MessagesController < ApplicationController

def create 
         message = Message.new({
            user_id: session_user.id,
            message_content: messages_params[:message_content],
            room_id: messages_params[:room_id]
         })
         puts "new message"
         puts "new message"
         puts message.user_id
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
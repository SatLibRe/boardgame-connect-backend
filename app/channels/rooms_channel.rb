class RoomsChannel < ApplicationCable::Channel
  def subscribed
    room = Room.find(20)
    stream_for room
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end

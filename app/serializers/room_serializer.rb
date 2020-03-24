class RoomSerializer < ActiveModel::Serializer
   attributes :id, :name, :host_id, :zoom_url, :boardgame_id, :maxplayers
  has_many :users
end

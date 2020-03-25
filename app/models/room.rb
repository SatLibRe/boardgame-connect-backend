class Room < ApplicationRecord
    has_many :user_rooms
    belongs_to :boardgame
    has_many :users, through: :user_rooms
    has_many :messages
end

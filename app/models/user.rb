class User < ApplicationRecord
    has_many :user_board_games 
    has_many :boardgames, through: :user_board_games
    has_many :user_rooms
    has_many :rooms, through: :user_rooms
end

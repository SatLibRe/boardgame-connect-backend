class Boardgame < ApplicationRecord
    has_many :comments
    has_many :user_board_games 
    has_many :users, through: :user_board_games
    has_many :rooms
end

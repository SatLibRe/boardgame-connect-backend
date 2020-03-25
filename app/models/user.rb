class User < ApplicationRecord
    has_many :user_board_games 
    has_many :boardgames, through: :user_board_games
    has_many :user_rooms
    has_many :rooms, through: :user_rooms

    validates :name, uniqueness: true
    validates :name, length: { maximum: 10 }
    # validates_format_of :name, :with => /^[a-zA-Z\d ]*$/i,
    # :message => "can only contain letters and numbers."
    #need some more validations here
    #length, only english letters and numbers

    has_secure_password
end

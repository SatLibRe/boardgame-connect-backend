class Message < ApplicationRecord
    belongs_to :room
    validates :message_content, length: { maximum: 150 }
end

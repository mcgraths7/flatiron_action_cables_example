class User < ApplicationRecord
  has_many :messages
  has_many :chat_rooms, through: :messages
  validates :username, presence: true, uniqueness: true
end

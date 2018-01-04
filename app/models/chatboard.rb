class Chatboard < ApplicationRecord
  belongs_to :user
  has_many :chatmessages
end

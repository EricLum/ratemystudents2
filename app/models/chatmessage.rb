class Chatmessage < ApplicationRecord
  belongs_to :chatboard
  belongs_to :user
end

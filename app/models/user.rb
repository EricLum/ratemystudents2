class User < ApplicationRecord
  has_many :students
  has_many :chatboards
  has_many :reviews, through: :students
  has_secure_password
  validates :name, presence: true, uniqueness: true
end

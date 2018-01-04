class Student < ApplicationRecord
  belongs_to :teacher
  has_many :reviews
end
 

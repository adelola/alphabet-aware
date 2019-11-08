class Challenge < ApplicationRecord
  belongs_to :student

  has_many :correct_answers
  has_many :incorrect_answers

  
end

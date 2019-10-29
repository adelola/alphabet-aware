class Student < ApplicationRecord
  belongs_to :classroom

  validates :name, presence: true, length: { in: 1...140 }
  validates :user, presence: true
end

class User < ApplicationRecord
  include Clearance::User

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :classrooms, dependent: :destroy
end

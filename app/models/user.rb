class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :user_route_shoes
  has_many :shoes
  has_many :routes
end

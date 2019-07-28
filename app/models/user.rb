class User < ApplicationRecord
  has_many :user_route_shoes
  has_many :shoes, through: :user_route_shoes
  has_many :routes, through: :user_route_shoes
end

class Route < ApplicationRecord
  has_many :users, through: :user_route_shoes
  has_many :route_coords, through: :route_coord
end

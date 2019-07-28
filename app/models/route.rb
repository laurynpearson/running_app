class Route < ApplicationRecord
  has_many :users, through: :user_route_shoes
end

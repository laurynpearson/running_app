class UserRouteShoe < ApplicationRecord
  belongs_to :route
  belongs_to :shoe
  belongs_to :user
end

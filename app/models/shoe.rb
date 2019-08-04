class Shoe < ApplicationRecord
  belongs_to :user

  # create a method to add new route mileage to specified shoe mileage
  def add_miles
    new_mileage = route_mileage + new_mileage
  end
end

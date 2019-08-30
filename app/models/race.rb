class Race < ApplicationRecord
  def meters_to_miles
    miles = distance / 1609.344
    return miles.round(1)
  end
  def friendly_date
    start_date_local.strftime("%A, %b %d %Y")
  end
end

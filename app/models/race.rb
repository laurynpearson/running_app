class Race < ApplicationRecord
  def meters_to_miles
    miles = distance / 1609.344
    us_miles = miles.round(1)
    return us_miles.to_s + " " + "mi"
  end
  def friendly_date
    start_date_local.strftime("%A, %b %d %Y")
  end
end

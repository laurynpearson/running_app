require 'http'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# user = User.create(first_name: "Lauryn", last_name: "Pearson", username: "laurynp", email: "laurynp@email.com", password: "password")

# user = User.create(first_name: "Addison", last_name: "Surratt", username: "addys", email: "addys@email.com", password: "password")

# user = User.create(first_name: "Chewie", last_name: "Pearson", username: "chewie_dawg", email: "chewpup@email.com", password: "password")

# shoe = Shoe.create(description: "Altra Torin", year_purchased: "2017", mileage: 100.31, active: true)

# route = Route.create(location: "Chicago", distance: 7.14, description: "Run south on lakefront path starting at Fleet Feet South Loop", duration: "1:20:17")

# route = Route.create(location: "Chicago", distance: 8.01, description: "Run south on lakefront path", duration: "1:29:40")




response = HTTP.get("https://www.strava.com/api/v3/running_races?year=2019" , headers: {Authorization: "Bearer {{key}}"})
 
# response.parse[i]["name"]
i = 
while i < response.parse.length
  race = Race.create(name: response.parse[i]["name"], start_date_local: response.parse[i]["start_date_local"], distance: response.parse[i]["distance"], city: response.parse[i]["city"], state: response.parse[i]["state"], country: response.parse[i]["country"])
  i += 1
end

 

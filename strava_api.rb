require 'http'

# i = 0
# route_input = 200
# 10.times do
#   response = HTTP.get("https://www.strava.com/api/v3/routes/#{route_input}",headers: {Authorization: "Bearer (key)"})
#   p routes = response.parse["segments"]
#   route_input = route_input + 1
# end



response = HTTP.get("https://www.strava.com/api/v3/routes/100",headers: {Authorization: "Bearer KEY"})
p routes = response.parse["segments"][0]



# name
# activity_type
# distance
# city
# state
# country

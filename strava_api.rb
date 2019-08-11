require 'http'

# i = 0
# route_input = 200
# 10.times do
#   response = HTTP.get("https://www.strava.com/api/v3/routes/#{route_input}",headers: {Authorization: "Bearer 25672f02cb8e61b1a8507403fc9c339968060fe7"})
#   p routes = response.parse["segments"]
#   route_input = route_input + 1
# end

# response = HTTP.get("https://www.strava.com/api/v3/routes/201",headers: {Authorization: "Bearer 25672f02cb8e61b1a8507403fc9c339968060fe7"})
# p routes = response.parse["segments"]
# response = HTTP.get("https://www.strava.com/api/v3/routes/202",headers: {Authorization: "Bearer 25672f02cb8e61b1a8507403fc9c339968060fe7"})
# p routes = response.parse["segments"]
# response = HTTP.get("https://www.strava.com/api/v3/routes/203",headers: {Authorization: "Bearer 25672f02cb8e61b1a8507403fc9c339968060fe7"})
# p routes = response.parse["segments"]




response = HTTP.get("https://www.strava.com/api/v3/routes/100",headers: {Authorization: "Bearer 25672f02cb8e61b1a8507403fc9c339968060fe7"})
p routes = response.parse["segments"][0]




# name
# activity_type
# distance
# city
# state
# country
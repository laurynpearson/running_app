require 'http'

response = HTTP.get("https://www.strava.com/api/v3/running_races?year=2019" , headers: {Authorization: "Bearer "})
 
races = response.parse
count = []
i = 0
while i < races.length
  countries = races[i]
  count << countries
  i += 1
end
p count
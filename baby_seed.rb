route_input = 203
3.times do
  p system "rails db:seed key=#{route_input}"
  route_input +=1
end

birthday = Time.new(2001, 8, 28)
summer = Time.new(2026, 5, 21)
winter = Time.new(2022, 3, 10)
idependence_day = Time.new(1822, 9, 7)

# comparações

puts birthday > idependence_day
puts summer >= winter
puts idependence_day > winter

puts birthday == winter

puts summer.between?(birthday, winter)
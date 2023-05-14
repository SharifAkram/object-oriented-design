mountain_bike = MountainBike.new(
      size:        'S',
      front_shock: 'Manitou',
      rear_shock:  'Fox')

puts mountain_bike.size
# => S

puts mountain_bike.spares
# => {:chain        =>"11-speed",
#     :tire_size    =>"23",         <- wrong!
#     :tape_color   =>nil,          <- not applicable!
#     :front_shock  =>"Manitou"}

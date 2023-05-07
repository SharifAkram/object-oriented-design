# All bicycles now share the same default for chain
# but use different defaults for tire size, as shown below:


road_bike = RoadBike.new(
      size:   'M',
      tape_color: 'red')

puts road_bike.tire_size    # => 23
puts road_bike.chain        # => 11-speed

mountain_bike = MountainBike.new(
      size:     'S',
      front_shock: 'Manitou',
      rear_shock: 'Fox')

puts mountain_bike.tire_size    # => 2.1
puts mountain_bike.chain        # => 11-speed


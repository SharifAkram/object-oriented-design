# Before this change, RoadBike responded correctly to size,
# but MountainBike did not. The behavior they share in common
# in now defined in Bicycle, their common superclass.
# The magic of inheritance is such that both now respond
# correctly to size, as shown below.


road_bike = Roadbike.new(
      size:   'M',
      tape_color: 'red')

mountain_bike = MountainBike.new(
      size:   'S',
      front_shock: 'Manitou',
      rear_shock: 'Fox')

puts road_bike.size
# => M

puts mountain_bike.size
# => 8

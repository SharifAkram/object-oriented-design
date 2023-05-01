# You can also use the explicit keyword syntax:

require './listing_3_10.rb'

puts Gear.new(
      wheel:      Wheel.new(26, 1.5),
      chainring:  52,
      cog:        11).gear_inches

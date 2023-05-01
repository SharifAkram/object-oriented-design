# You can pass keyword arguments as a hash, as shown in the following example:

require './listing_3_10.rb'

puts Gear.new(
    :cog        => 11,
    :chainring  => 52,
    :wheel      => Wheel.new(26, 1.5)).gear_inches

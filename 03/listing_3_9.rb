# Remove Argument-Order Dependencies
# In the following example, Gear’s initialize method takes three arguments:
# chainring, cog, and wheel.
# It provides no defaults; each of these arguments is required.
# In lines 20–23, when a new instance of Gear is created,
# the three arguments must be passed and they must be passed in
# the correct order.


class Gear
    attr_reader :chainring, :cog, :wheel
    def initialize(chainring, cog, wheel)
        @chainring = chainring
        @cog       = cog
        @wheel     = wheel
    end
    # ...
end

puts Gear.new(
    52,
    11,
    Wheel.new(26, 1.5)).gear_inches

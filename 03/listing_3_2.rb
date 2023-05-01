# Inject dependencies
# Referring to another class by its name creates a major sticky spot.
# In the version of Gear we’ve been discussing (repeated in Listing 3.2),
# the gear_inches method contains an explicit reference to class Wheel.

class Gear
    attr_reader :chainring, :cog, :rim, :tire
    def initialize(chainring, cog, rim, tire)
        @chainring = chainring
        @cog       = cog
        @rim       = rim
        @tire      = tire
    end

    def gear_inches
        ratio * Wheel.new(rim, tire).diameter
    end
    # ...
end

puts Gear.new(52, 11, 26, 1.5).gear_inches

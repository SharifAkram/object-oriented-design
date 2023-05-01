# Hanging these unnecessary dependencies on Gear simultaneously reduces Gear’s
# reusability and increases its susceptibility to being forced to change
# unnecessarily. Gear becomes less useful when it knows too much about other
# objects; if it knew less, it could do more. Instead of being glued to Wheel,
# this next version of Gear expects to be initialized with an object that can
# respond to diameter:


class Gear
    attr_reader :chainring, :cog, :wheel
    def initialize(chainring, cog, wheel)
        @chainring = chainring
        @cog       = cog
        @wheel     = wheel
    end

    def gear_inches
        ratio * wheel.diameter
    end
    # ...
end

# Gear expects a 'Duck' that knows 'diameter'
puts Gear.new(52, 11, Wheel.new(26, 1.5)).gear_inches

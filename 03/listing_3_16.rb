# Reversing Dependencies
# The following example illustrates one possible form of the reversal.
# Here Wheel has been changed to depend on Gear and gear_inches.
# Gear is still responsible for the actual calculation, but it expects
# a diameter argument to be passed in by the caller (line 8).


class Gear
    attr_reader :chainring, :cog
    def initialize(chainring:, cog:)
        @chainring = chainring
        @cog       = cog
    end

    def gear_inches(diameter)
        ratio * diameter
    end

    def ratio
        chainring / cog.to_f
    end
    # ...
end

class Wheel
    attr_reader :rim, :tire, :gear
    def initialize(rim:, tire:, chainring:, cog:)
        @rim  = rim
        @tire = tire
        @gear = Gear.new(chainring: chainring, cog: cog)
    end

    def diameter
        rim + (tire * 2)
    end

    def gear_inches
        gear.gear_inches(diameter)
    end
    # ...
end

puts Wheel.new(
    rim:        26,
    tire:       1.5,
    chainring:  52,
    cog:        11).gear_inches

# 137.0909090909091

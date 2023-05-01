# Ruby allows you to remove the responsibility for calculating tire diameter
# from Gear without committing to a new class. The following example extends
# the previous Wheel Struct with a block that adds a method to calculate
# diameter.


class Gear
    attr_reader :chainring, :cog, :wheel
    def initialize(chainring, cog, rim, tire)
        @chainring = chainring
        @cog       = cog
        @wheel     = Wheel.new(rim, tire)
    end

    def ratio
        chainring / cog.to_f
    end

    def gear_inches
        ratio * wheel.diameter
    end

# Now you have a Wheel that can calculate its own diameter.
#vEmbedding this Wheel in Gear is obviously not the long-term design goal;
# it’s more an experiment in code organization.
# It cleans up Gear but defers the decision about Wheel.

    Wheel = Struct.new(:rim, :tire) do
        def diameter
            rim + (tire * 2)
        end
    end
end

# Isolate instance creation
# In the first, creation of the new instance of Wheel has been moved
# from Gear’s gear_inches method to Gear’s initialization method.
# This cleans up the gear_inches method and publicly exposes the
# dependency in the initialize method. Notice that this technique
# unconditionally creates a new Wheel each time a new Gear is created.


class Gear
    attr_reader :chainring, :cog, :wheel
    def initialize(chainring, cog, rim, tire)
        @chainring = chainring
        @cog       = cog
        @wheel     = Wheel.new(rim, tire) # <=== Isolate Instance Creation
    end

    def gear_inches
        ratio * wheel.diameter
    end
    # ...
end

puts.Gear.new(52, 11, 26, 1.5).gear_inches

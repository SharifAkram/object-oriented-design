# The next alternative isolates creation of a new Wheel in its own
# explicitly defined wheel method. This new method lazily creates a
# new instance of Wheel, using Ruby’s ||= operator. In this case,
# creation of a new instance of Wheel is deferred until gear_inches
# invokes the new wheel method.


class Gear
    attr_reader :chainring, :cog, :wheel
    def initialize(chainring, cog, rim, tire)
        @chainring = chainring
        @cog       = cog
        @rim       = rim
        @tire      = tire
    end

    def gear_inches
        ratio * wheel.diameter
    end

    def wheel
        @wheel ||= Wheel.new(rim, tire) # <=== Create a new instance
    # ...
    end
end

puts.Gear.new(52, 11, 26, 1.5).gear_inches

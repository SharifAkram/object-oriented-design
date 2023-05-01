# In the following example, RevealingReferences has the same interface as
# the previous class. It takes a two-dimensional array as an initialization
# argument, and it implements the diameters method. Despite these external
# similarities, its internal implementation is very different.


class RevealingReferences
    attr_reader :wheels
    def initialize(data)
        @wheels = wheelify(data)
    end

    def diameters
        wheels.collect {|wheel|
        wheel.rim + (wheel.tire * 2)}
    end

    # now everyone can send rim/tire to wheel
    Wheel = Struct.new(:rim, :tire)
    def wheelify(data)
        data.collect {|cell|
        Wheel.new(cell[0], cell[1])}
    end
end

# The diameters method above now has no knowledge of the internal structure
# of the array. All diameters knows is that the message wheels returns an
# enumerable and that each enumerated thing responds to rim and tire.
# What were once references to cell[1] have been transformed into
# message sends to wheel.tire.

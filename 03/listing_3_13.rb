# Explicitly define defaults
# One advantage they have over hashes, however,
# is that they allow you to set defaults right in the argument list,
# just like positional arguments.


class Gear
    attr_reader :chainring, :cog, :wheel
    def initialize(chainring: 40, cog: 18, wheel:)
        @chainring = chainring
        @cog       = cog
        @wheel     = wheel
    end
    # ...
end

puts Gear.new(wheel: Wheel.new(26, 1.5)).chainring

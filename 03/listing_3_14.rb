# Some situations may benefit from a bit more sophistication.
# For example, line 3 below sets a more complex default by sending a message.


class Gear
    attr_reader :chainring, :cog, :wheel
    def initialize(chainring: default_chainring, cog: 18, wheel:)
        @chainring = chainring
        @cog       = cog
        @wheel     = wheel
    end

    def default_chainring
        (100/2) - 10      # silly code, useful example
    end
    # ...
end

puts Gear.new(wheel: Wheel.new(26, 1.5)).chainring

puts Gear.new(chainring: 52, wheel: Wheel.new(26, 1.5)).chainring

# It’s best to embed simple defaults right in the parameter list,
# but if getting the default requires running a bit of code, don’t  
# hesitate to send a message.

# When Gear is part of an external interface
module SomeFramework
    class Gear
        attr_reader :chainring, :cog, :wheel
        def initialize(chainring, cog, wheel)
            @chainring = chainring
            @cog       = cog
            @wheel     = wheel
        end
        # ...
    end
end

# Wrap the interface to protect yourself from changes
module GearWrapper
    def self.gear(chainring:, cog:, wheel:)
        SomeFramework::Gear.new(chainring, cog, wheel)
    end
end

# Now you can create a new Gear using keyword arguments
puts GearWrapper.gear(
    chainring:  52,
    cog:        11,
    wheel:      Wheel.new(26, 1.5)).gear_inches


=begin

The classes in your application should depend on code that you own;
use a wrapping method to isolate external dependencies.
In this example, the SomeFramework::Gear class is not owned by your
application; it is part of an external framework.
Its initialization method requires positional arguments.
The GearWrapper module was created to avoid having multiple
dependencies on the order of those arguments. GearWrapper isolates all
knowledge of the external interface in one place and, equally important,
it provides an improved interface for your application.

= end

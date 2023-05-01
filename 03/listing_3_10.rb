# Use keyword arguments
# There’s a simple way to avoid depending on positional arguments.
# If you have control over Gear’s initialize method, change the code
# to take keyword arguments. The following example illustrates this technique:


class Gear
    attr_reader :chainring, :cog, :wheel
    def initialize(chainring:, cog:, wheel:)
        @chainring = chainring
        @cog       = cog
        @wheel     = wheel
    end
    # ...
end

# Using attr_reader to wrap Ruby variables in methods introduces two new issues.
#  The first involves visibility. The attr_reader in Listing 2.6 creates
# a public cog method. If you’d prefer the method to be private,
# you could simply restrict access by using the private keyword,
# as shown on line 9:


class Gear
    private
    attr_reader :chainring, :cog

    public
    def initialize(chainring, cog)
        @chainring = chainring
        @cog       = cog
    end
    # ...
end

class Blinkered
    def cog(gear)
        gear.cog
    end
end

puts Blinkered.new.cog(Gear.new(54, 11))
# => private method 'cog' called for

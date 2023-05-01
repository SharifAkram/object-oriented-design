# Hide the variables, even from the class that defines them,
# by wrapping them in methods. Ruby provides attr_reader as an
# easy way to create the encapsulating methods:

class Gear
  attr_reader :chainring, :cog # <--------
  def initialize(chainring, cog)
    @chainring = chainring
    @cog       = cog
  end

  def ratio
    chainring / cog.to_f  # <---------
  end
end


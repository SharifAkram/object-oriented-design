class Gear
  attr_reader :chainring, :cog, :rim, :tire
  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog       = cog
    @rim       = rim
    @tire      = tire
  end

  def gear_inches
    ratio * Wheel.new(rim, tire).diameter
  end

  def ratio
    chainring / cog.to_f
  end
# ..
end

class Wheel
  attr_reader :rim, :tire
  def initialize(rim, tire)
    @rim  = rim
    @tire = tire
  end

  def diameter
    rim + (tire * 2)
  end
# ...
end

puts Gear.new(52, 11, 26, 1.5).gear_inches
# 137.0909090909091

=begin

Examine the preceding code and make a list of the situations in which Gear
would be forced to change because of a change to Wheel. This code seems
innocent, but it’s sneakily complex. Gear has at least four dependencies
on Wheel, enumerated as follows. Most of the dependencies are unnecessary;
they are a side effect of the coding style. Gear does not need them to do
its job. Their very existence weakens Gear and makes it harder to change.

=end

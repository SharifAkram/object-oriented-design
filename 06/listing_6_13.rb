# Template Method Pattern
# In the following code, MountainBike and RoadBike take advantage of only
# one of these opportunities for specialization.
# Both implement default_tire_size, but neither implements default_chain.
# Each subclass thus supplies its own default for tire size but inherits
# the common default for chain.


class Bicycle
  attr_reader :size, :chain, :tire_size

  def initialize(**opts)
    @size      = opts[:size]
    @chain     = opts[:chain]     || default_chain
    @tire_size = opts[:tire_size] || default_tire_size
  end

  def default_chain     # <- common default
    "11-speed"
  end
  # ...
end

class RoadBike < Bicycle
  # ...
  def default_tire_size   # <- subclass default
    "23"
  end
end

class MountainBike < Bicycle
  # ...
  def default_tire_size   # <- subclass default
    "2.1"
  end
end

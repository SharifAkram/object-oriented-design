# The following is a first attempt at a MountainBike subclass.
# This new subclass is a direct descendent of the original
# Bicycle class defined in Listing 6.1. The subclass implements two methods,
# initialize and spares. Both of these methods are already implemented in
# Bicycle; therefore, they are said to be overridden by MountainBike.


class MountainBike < Bicycle
  attr_reader :front_shock, :rear_shock

  def initialize(**opts)
    @front_shock = opts[:front_shock]
    @rear_shock = opts[:rear_shock]
    super
  end

  def spares
    super.merge(front_shock: front_shock)
  end
end

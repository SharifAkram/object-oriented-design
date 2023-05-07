# Bicycles have a chain and a tire size.
# All bicycles share the same default for chain.
# Subclasses provide their own default for tire size.
# Concrete instances of subclasses are permitted to ignore defaults
# and supply instance-specific values.


class Bicycle
  attr_reader :size

  def initialize(**opts)
    @size      = opts[:size]
    @chain     = opts[:chain]
    @tire_size = opts[:tire_size]
  end
end


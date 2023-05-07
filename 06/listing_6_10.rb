class MountainBike < Bicycle
  # ...
  def spares
    super.merge(front_shock: front_shock)
  end
end

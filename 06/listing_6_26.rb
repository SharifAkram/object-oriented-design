class Bicycle
  # ...
  def spares
    { tire_size: tire_size,
      chain:     chain }.merge(local_spares)
  end

  # hook for subclasses to override
  def local_spares
    {}
  end
end

class RoadBike < Bicycle
  # ...
  def local_spares
    { tape_color: tape_color }
  end
end

# Separating Abstract from Concrete
# RoadBike and MountainBike both implement a version of spares.
# RoadBike’s definition (repeated below) is the original one that
# was copied from the concrete Bicycle class.
# It is self-contained and thus still works.


class RoadBike < Bicycle
  # ...
  def spares
    {chain:   '11-speed',
     tire_size: '23',
     tape_color: tape_color}
  end
end

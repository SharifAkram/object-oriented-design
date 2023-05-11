# This first implementation of spares is simplest to write but produces
# the most tightly coupled classes. Remember that RoadBike’s current
# implementation looks like this:

class Roadbike < Bicycle
  # ...
  def spares
    {chain:     '11-speed',
     tire_size: '23',
     tape_color: tape_color}
  end
end

# Promoting size behavior to the superclass requires three changes,
# as shown in the example below. The attribute reader and initialization
# code move from RoadBike to Bicycle (lines 8 and 11), and
# RoadBike’s initialize method adds a send of super (line 20).


class Bicycle
  attr_reader :size     # <- promoted from Roadbike

  def initialize(**opts)
    @size = opts[:size] # <- promoted from RoadBike
  end
end

class RoadBike < Bicycle
  attr_reader :tape_color

  def initialize(**opts)
    @tape_color = opts[:tape_color]
    super               # <- Roadbike MUST send 'super'
  end
  # ...
end

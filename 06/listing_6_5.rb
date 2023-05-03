# Ignoring the rightness of the code for a moment,
# the simplest way to make this change is to rename Bicycle to
# RoadBike and to create a new, mostly empty Bicycle class.
# The following example does just that.


class Bicycle
  # This class is empty except for initialize
  # Code has been moved to RoadBike
  def initialize(**opts)
  end
end

class RoadBike < Bicycle
  # Now a subclass of Bicycle
  # Contains all code from the old Bicycle class.
end

class MountainBike < Bicycle
  # Still a subclass of Bicycle
  # Code has not changed
end

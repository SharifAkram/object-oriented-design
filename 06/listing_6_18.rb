class Bicycle
  # ...
  def default_tire_size
    raise NotImplementedError
      "#{self.class} should have implemented..."
  end
end

# This additional information makes the problem inescapably clear.
# As running this code shows, this RecumbentBike needs access to an
# implementation of default_tire_size.

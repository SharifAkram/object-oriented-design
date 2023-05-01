# The best way to explain duck types is to explore the consequences of not
# using them. This section contains an example that goes through several
# refactorings, solving a messy design problem by finding and implementing
# a duck type.

# overlooking the duck

class Trip
  attr_reader :bicycles, :customers, :vehicle

  # this 'mechanic' argument could be of any class
  def prepare(mechanic)
    mechanic.prepare_bicycles(bicycles)
  end

  # ...
end

# if you happen to pass an instance of 'this' class,
# it works
class Mechanic
  def prepare_bicycles(bicycles)
    bicycles.each { |bicycle| prepare_bicycle(bicycle) }
  end

  def prepare_bicycle(bicycle)
    # ...
  end
end

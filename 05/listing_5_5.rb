# There are various ways to check the class of an object.
# The case statement above is one of them. The kind_of? and is_a?
# messages (they are synonymous) also check class.
# Rewriting the previous example in the following way does nothing to
# improve the code.

if preparer.kind_of?(Mechanic)
  preparer.prepare_bicycles(bicycles)
elsif preparer.kind_of?(TripCoordinator)
  preparer.buy_food(customers)
elsif preparer.kind_of?(Driver)
  preparer.gas_up(vehicle)
  preparer.fill_water_tank(vehicle)
end

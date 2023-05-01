# Programmers who understand that they should not depend on class names
# but who haven’t yet made the leap to duck types are tempted to replace
# kind_of? with responds_to?. For example:

if preparer.respond_to?(:prepare_bicycle)
  preparer.prepare_bicycles(bicycles)
elsif preparer.respond_to?(:buy_food)
  preparer.buy_food(customers)
elsif preparer.respond_to?(:gas_up)
  preparer.gas_up(vehicle)
  preparer.fill_water_tank(vehicle)
end

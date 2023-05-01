# Here’s the code for the new design. The prepare method now expects its  
# arguments to be Preparers, and each argument’s class implements the new
# interface.

# Trip preparation becomes easier
class Trip
  attr_reader :bicycles, :customers, :vehicle

  def prepare(preparers)
    preparers.each { |preparer|
      preparer.prepare_trip(self) }
  end
  # ...
end

# when every preparer is a Duck
# that responds to 'prepare_trip'
class Mechanic
  def prepare_trip(trip)
    trip.bicycles.each { |bicycle|
      prepare_bicycle(bicycle) }
  end
  # ..
end

class TripCoordinator
  def prepare_trip(trip)
    buy_food(trip.customers)
  end
  # ...
end

class Driver
  def prepare_trip(trip)
    vehicle = trip.vehicle
    gas_up(vehicle)
    fill_water_tank(vehicle)
  end
  # ...
end

# The prepare method can now accept new Preparers without being forced to
# change, and it’s easy to create additional Preparers if the need arises.

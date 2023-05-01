# trip preparation becomes more complicated
class Trip
  attr_reader :bicycles, :customers, :vehicles

  def prepare(preparers)
    preparers.each { |preparer|
      case preparer
      when Mechanic
        preparer.prepare_bicycles(bicycles)
      when TripCoordinator
        preparer.buy_food(customers)
      when Driver
        preparer.gas_up(vehicle)
        preparer.fill_water_tank(vehicle)
      end
    }
  end
end

# when you introduce TripCoordinator and Driver
class TripCoordinator
  def buy_food(customers)
    # ...
  end
end

class Driver
  def gas_up(vehicle)
    # ...
  end

  def fill_water_tank(vehicle)
    # ...
  end
end

=begin

The new TripCoordinator and Driver classes are simple and inoffensive,
but Trip’s prepare method is now a cause for alarm. It refers to three
different classes by name and knows specific methods implemented in each.
Risks have dramatically gone up. Trip’s prepare method might be forced
to change because of a change elsewhere, and it might unexpectedly break
as the result of a distant, unrelated change.

=end

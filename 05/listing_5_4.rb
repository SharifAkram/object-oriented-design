# The most common, obvious pattern that indicates an undiscovered duck is
# the example you’ve already seen: a case statement that switches on the
# class names of domain objects of your application.

class Trip
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
  # ..
end

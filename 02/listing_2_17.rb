def gear_inches
    ratio * diameter
end

def diameter
    rim + (tire * 2)
end

# The gear_inches method now sends a message to get wheel diameter.
# Notice that the refactoring does not alter how diameter is calculated;
# it merely isolates the behavior in a separate method. Once isolated,
# it becomes obvious that Gear’s diameter method depends solely on
# things in Wheel. This suggests that the method ought to be in Wheel.

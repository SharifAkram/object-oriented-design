# first - iterate over the array
def diameters
    wheels.collect{|wheel| diameter(wheel)}
end

# second - calculate diameter of ONE wheel
def diameter(wheel)
    wheel.rim + (wheel.tire * 2)
end

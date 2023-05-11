# What happens if some programmer innocently creates a
# new RecumbentBike subclass but neglects to supply a
# default_tire_size implementation? He encounters the following error.


class RecumbentBike < Bicycle
  def default_chain
    '10-speed'
  end
end

bent = RecumbentBike.new(size: "L")
# => NotImplementedError (from listing_6_16.rb)
# => RecumbentBike should have implemented...
# => .../some_file.rb:15:in 'default_tire_size'

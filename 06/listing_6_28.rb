# This final example illustrates how simple it is to create a new subclass,
# even for someone unfamiliar with the application. Here is class
# RecumbentBike, a new specialization of Bicycle:


class RecumbentBike < Bicycle
  attr_reader :flag

  def post_initialize(opts)
    @flag = opts[:flag]
  end

  def local_spares
    { flag: flag }
  end

  def default_chain
    '10-speed'
  end

  def default_tire_size
    '28'
  end
end

bent =
  RecumbentBike.new(
    size: "M",
    flag: 'tall and orange')

puts bent.spares
# {:tire_size=>"28", :chain=>"10-speed", :flag=>"tall and orange"}

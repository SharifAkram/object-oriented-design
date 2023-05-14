# Here’s an illustration of the trap. If someone creates a new subclass
# and forgets to send super in its initialize method, he encounters
# this problem:


class RecumbentBike < Bicycle
  attr_reader :flag

  def initialize(**opts)
    @flag = opts[:flag]   # forgot to send 'super'
  end

  def spares
    super.merge(flag: flag)
  end

  def default_chain
    '10-speed'
  end

  def default_tire_size
    '28'
  end
end

bent = RecumbentBike.new(flag: 'tall and orange')
puts bent.spares
# => {:tire_size=>nil,     <- didn't get initialized
# =>  :chain=>nil,
# =>  :flag=>"tall and orange"}

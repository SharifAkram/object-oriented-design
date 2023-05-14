# 6.2.2 Embedding Multiple Types
# When a preexisting concrete class contains most of the behavior you need,
# it’s tempting to solve this problem by adding code to that class.
# This next example does just that: it changes the existing Bicycle class
# so that spares works for both road and mountain bikes.


class Bicycle
  attr_reader :style, :size,
              :tape_color,
              :front_shock, :rear_shock

  def initialize(**opts)
    @style       = opts[:style]
    @size        = opts[:size]
    @tape_color  = opts[:tape_color]
    @front_shock = opts[:front_shock]
    @rear_shock  = opts[:rear_shock]
  end

  # checking 'styles' starts down a slippery slope
  def spares
    if style == :road
      { chain:        '11-speed',
        tire_size:    '23',       # millimeters
        tape_color:   tape_color }
    else
      { chain:        '11-speed',
        tire_size:    '2.1',      # inches
        front_shock:  front_shock }
    end
  end
  # ...
end


bike = Bicycle.new(
        style:        :mountain,
        size:         'S',
        front_shock:  'Manitou',
        rear_shock:   'Fox')

puts bike.spares
# {:chain=>"11-speed", :tire_size=>"2.1", :front_shock=>"Manitou"}

bike = Bicycle.new(
        style:        :road,
        size:         'M',
        tape_color:   'red')

puts bike.spares
# {:chain=>"11-speed", :tire_size=>"23", :tape_color=>"red"}

# This style variable acts to divide instances of Bicycle into
# two different categories—those whose style is
# :road and those whose style is anything else.

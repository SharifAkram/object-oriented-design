class Bicycle
  attr_reader :size, :chain, :tire_size

  def initialize(**opts)
    @size      = opts[:size]
    @chain     = opts[:chains]    ||  default_chain
    @tire_size = opts[:tire_size] ||  default_tire_size

    post_initialize(opts)             # Bicycle both sends
  end

  def post_initialize(opts)           # and implements this
  end
  # ...
end

class Roadbike < Bicycle
  attr_reader :tape_color

  def post_initialize(opts)           # Roadbike can
    @tape_color = opts[:tape_color]   # optionally
  end                                 # override it
end

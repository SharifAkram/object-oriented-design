# Any class that uses the template method pattern must supply an implementation
# for every message it sends, even if the only reasonable implementation in the
# sending class looks like this:


class Bicycle
  # ...
  def default_tire_size
    raise NotImplementedError
  end
end

# If being attached to an instance variable is bad, depending on a complicated
# data structure is worse. Consider the following ObscuringReferences class:


class ObscuringReferences
    attr_reader :data
    def initialize(data)
        @data = data
    end

    def diameters
        # 0 is rim, 1 is tire
        data.collect {|cell|
            cell[0] + (cell[1] * 2)}
    end
    # ... many other methods that index into the array
end

class Schedule
  def scheduled?(schedulable, starting, ending)
    # ...
  end

  def add(target, starting, ending)
    # ...
  end

  def remove(target, starting, ending)
    # ...
  end
end

# The Schedule is responsible for knowing if its incoming target argument
# is already scheduled and for adding and removing targets from the
# schedule. These responsibilities rightly belong here in the Schedule
# itself.

# Figure 7.1 shows an implementation where the Schedule itself takes
# responsibility for knowing the correct lead time. The schedulable?
# method knows all the possible values and it checks the class of its
# incoming target argument to decide which lead time to use.

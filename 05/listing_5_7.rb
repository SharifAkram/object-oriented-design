# Every example thus far unequivocally declares that you should
# not use kind_of? or responds_to? to decide what message to send an object,
# yet you don’t have to look far to find reams of well-received code that do
# exactly that. The following code is an example from the Ruby on Rails
# framework (activerecord/lib/active_record/relation/finder_methods.rb [github.com/rails/rails/blob/5-1-stable/activerecord/lib/active_record/relation/finder_methods.rb#L428]).
# This example patently uses class to decide how to deal with its input,
# a technique that is in direct opposition to the guidelines stated above.
# The find_with_ids method below clearly decides how to behave based on the
# class of its ids argument.


def find_with_ids(*ids)
  raise UnknownPrimaryKey.new(@klass) if primary_key.nil?

  expects_array = ids.first.kind_of?(Array)
  return ids.first if expects_array && ids.first.empty?

  ids = ids.flatten.compact.uniq

  case ids.size
  when 0
    raise RecordNotFound, "Couldn't find #{@klass.name} without an ID"
  when 1
    result = find_one(ids.first)
    expects_array ? [ result ] : result
  else
    find_some(ids)
  end
rescue ::RangeError
  raise RecordNotFound, "Couldn't find #{@klass.name} with an out of range ID"
end

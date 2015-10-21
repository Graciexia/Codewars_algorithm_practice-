require_relative 'lib/test_frame'

def list_in_range(hash, range)
  output = ''
  hash.sort{|a,b| a[1] <=> b[1]}.select{|x| range.include?x[1]}.each do |x|
    output << (output.empty? ? '' : ', ') << "#{x[0]} (#{x[1]})"
  end
  return output
end

food = {
  "Hamburger"=>1.99,
  "Cheese"=>0.99,
  "Steak"=>4.99,
  "Lobster"=>7.99,
  "Fries"=>1.49,
  "Sandwich"=>2.49
}

Test.assert_equals(list_in_range(food, (0.99..1.99)), "Cheese (0.99), Fries (1.49), Hamburger (1.99)")

# use join
# def list_in_range(hash, range)
#   arr = []
#   hash.sort{|a,b| a[1] <=> b[1]}.select{|x| range.include?x[1]}.each do |x|
#     arr << "#{x[0]} (#{x[1]})"
#   end
#   return arr.join(", ")
# end

# most compact
# def list_in_range(hash, range)
#   hash
#     .select { |k, v| range.include?(v) }
#     .sort_by { |k, v| v }
#     .map { |k, v| "#{k} (#{v})" }
#     .join(", ")
# end

# Complete the solution so that it returns a String in the format:
#
# "Key (Value), Key (Value)"
#
# From a hash for values within the given range, sorted by value lowest to highest.
#
#

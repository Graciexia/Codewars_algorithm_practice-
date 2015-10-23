require_relative 'lib/test_frame'

def get_squares(array)
  array.select {|x| x % (Math.sqrt x) == 0}.sort.uniq
end


# without Math.sqr and uniq
# def get_squares(array)
#   square_roots = []
#   squares = []
#   array.sort.each do |num|
#     if ! square_roots.include? (num ** 0.5).to_i
#     square_roots << (num ** 0.5).to_i
#     end
#   end
#   square_roots.each do |root|
#     squares << root ** 2
#   end
#   squares.each do |square|
#     if ! array.include? square
#       squares -= [square]
#     end
#   end
#   return squares
# end

Test.assert_equals(get_squares((1..16)), [1,4,9,16])
Test.assert_equals(get_squares((1..100)), [1,4,9,16,25,36,49,64,81,100])
Test.assert_equals(get_squares([4,1,16,1,10,35,22]), [1,4,16])

# description
# Given an array of numbers return an array of numbers from the array that qualify as perfect squares. A perfect
# square is defined as a whole number that, when square rooted, is a whole number. (Such as 1, 4, 9, 16, etc, etc.)
#
# Note: Return only one copy of each perfect square in ascendingorder
#
# get_squares(1..16) # => [1, 4, 9, 16]
# get_squares(1..100) # => [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]

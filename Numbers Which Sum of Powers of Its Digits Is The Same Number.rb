require_relative 'lib/test_frame'

# more compact
def eq_sum_powdig(h_max, exp)
  (100..h_max).select do |x|
    x.to_s.split('').inject(0) {|sum, n| sum + n.to_i**exp } == x
  end
end

# original solution
# def eq_sum_powdig(h_max, exp)
#   output = []
#   (100..h_max).each do |num|
#     sum = 0
#     num.to_s.split("").each do |i|
#       sum += (i.to_i)**exp
#     end
#     if sum == num
#       output << num
#     end
#   end
#   return output
# end


Test.assert_equals(eq_sum_powdig(100, 2), [])
Test.assert_equals(eq_sum_powdig(1000, 2), [])
Test.assert_equals(eq_sum_powdig(2000, 2), [])
Test.assert_equals(eq_sum_powdig(200, 3), [153])
Test.assert_equals(eq_sum_powdig(370, 3), [153, 370])

# Description:
# Not considering number 1, the integer 153 is the first integer having this property: the sum of the third-power of
# each of its digits is equal to 153. Take a look: 153 = 1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153
# The next number that experiments this particular behaviour is 370 with the same power.
# Write the function eq_sum_powdig(), that finds the numbers below a given upper limit hMax that fulfill this
# property but with different exponents as a power for the digits.
#
#                                                                                                                                                                                                                                                  eq_sum_powdig(hMax, exp): ----> sequence of numbers (sorted list) (Number one should not be considered).
#

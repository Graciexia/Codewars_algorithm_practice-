require_relative 'lib/test_frame'

def solution(number)
   return sprintf("%.2f", number).to_f
end


Test.assert_equals(solution(23.23456), 23.23)
Test.assert_equals(solution(1.546), 1.55)

# Update the solution method to round the argument value to the closest precision of two. The argument will always be a float.
#
# solution(23.23456) # should == 23.23
# solution(1.546) # should == 1.55

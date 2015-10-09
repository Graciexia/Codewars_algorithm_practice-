require_relative 'lib/test_frame'

def share_price(invested, changes)
  changes.each do |change|
    invested += (invested * change / 100.0).to_f
  end
  return sprintf("%.2f", invested)
end
# puts share_price(1000, [0, 2, 3, 6])



Test.assert_equals(share_price(100, []), '100.00')
Test.assert_equals(share_price(100, [-50, 50]), '75.00')
Test.assert_equals(share_price(100, [-50, 100]), '100.00')
Test.assert_equals(share_price(100, [-20, 30]), '104.00')
Test.assert_equals(share_price(1000, [0, 2, 3, 6]), '1113.64')


# Share price
#
# You spent all your saved money to buy some shares.
#
# You bought it for invested, and want to know how much it's worth, but all the info you can quickly get are just the
# change the shares price made in percentages.
#
# Your task:
#
# Write the function sharePrice() that calculates, and returns the current price of your share, given the following
# two arguments:
#
# invested(number), the amount of money you initially invested in the given share
# changes(array of numbers), contains your shares daily movement percentages
# The returned number, should be in string format, and it's precision should be fixed at 2 decimal numbers.

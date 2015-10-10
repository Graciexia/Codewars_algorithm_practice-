require_relative 'lib/test_frame'

# def line_types (lines)
#   lines.map do |line|
#     if line != nil
#       if (line.downcase =~ /alpha/i) != nil
#         :alpha
#       elsif (line.downcase =~ /beta/i) != nil
#         :beta
#       else
#         :unknown
#       end
#     else
#       :unknown
#     end
#   end
# end

# solution2
def line_types lines
  lines.map { |line| line =~ /(alpha|beta)/i ? $1.to_sym.downcase : :unknown }
end


input = ["This is an alpha line", "Beta line next!", "Another AlphA", "I have no idea", nil]
Test.expect( line_types( input ) == [ :alpha, :beta, :alpha, :unknown, :unknown ])

input = ["ALPHA alpha line","I have no idea",nil, "Beta line next!"]
Test.expect( line_types( input ) ==  [:alpha, :unknown, :unknown, :beta])

input = ["I'm AlPha.", "No idea", "beta tester", nil]
Test.expect( line_types( input ) == [:alpha, :unknown, :beta, :unknown])


# We need a method for parsing an array of strings to see which of 3 categories they fall into:
#
# :alpha strings contain the word "alpha" :beta strings contain the word "beta" :unknown strings don't contain either
# "alpha" or "beta" :unknown is also used for nil entries No string will contain both "alpha" and "beta" The strings
# can contain alpha and beta in any case (e.g. "Alpha", "BeTa") The input will be an array containing strings and
# nils. The output should be an array containing :alpha, :beta and :unknown symbols, based on the string at that
# index in the input array.
#

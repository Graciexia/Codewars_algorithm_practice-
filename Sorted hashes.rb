require_relative 'lib/test_frame'

# ruby sort function solution(most compact)
def solution(array, key)
  array.sort{|x,y| x[key] <=> y[key]}
end

one, two = [{id: 1}, {id: 2}]
Test.assert_equals(solution([two, one], :id), [one, two])
Test.assert_equals( solution([{:a=>9}, {:a=>2}, {:b=>3, :a=>5}, {:a=>3}], :a), [{:a=>2}, {:a=>3}, {:b=>3, :a=>5}, {:a=>9}])

#      solution 2 (without sort)
# def solution(array, key)
#   order = {}
#   output = []
#   array.each_with_index do |hash, index|
#     order[ hash[key] ] = index
#   end
#   order.keys.sort.each do |x|
#     output << array[ order[x] ]
#   end
#   return output
# end

#      build up my sort solution
# def solution(array, key)
#   output = Array.new(array)
#   (0..output.size-2).each do |x|
#     min = output[x][key]
#     swap = x
#     (x+1..output.size-1).each do |y|
#       if output[y][key] < min
#         min = output[y][key]
#         swap = y
#       end
#     end
#     if swap != x
#       output[x], output[swap] = output[swap], output[x]
#     end
#   end
#   return output
# end

#      description
# Complete the solution so that it sorts an array of hashes passed in by the hash key specified.
#
# Example:
#
#   solution([{'a' => 2}, {'a' => 1}], 'a')
# # => [{'a' => 1}, {'a' => 2}]]
#
# solution([{a: 1}, {a: 5}, {a: 3}], :a)
# # => [{a:1}, {a: 3}, {a: 5}]

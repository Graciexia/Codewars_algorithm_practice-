def check_root(string)
  data = string.strip.split(",")
  if data.length != 4
    return "incorrect input"
  end

  data.each do |num|
    if !/\A[-+]?\d+\z/.match(num)
      return "incorrect input"
    end
  end

  data = data.map{|x|x.to_i}

  data[0..-2].each_index do |index|
    if data[index] + 1 != data[index+1]
      return "not consecutive"
    end
  end

  square = data.reduce(:*) + 1
  root = (square ** 0.5).to_i
  return "#{square}, #{root}"

end




# Description:
#
# While surfing in web I found interesting math problem called "Always perfect". That means if you add 1 to the
# product of four consecutive numbers the answer is ALWAYS a perfect square. For example we have: 1,2,3,4 and the
# product will be 1X2X3X4=24. If we add 1 to the product that would become 25, since the result number is a perfect
# square the square root of 25 would be 5. So now lets write a function which takes numbers separated by commas in

# string format and returns the number which is a perfect square and the square root of that number.

# If string contains other characters than number or it has more or less than 4 numbers separated by comma function
# returns "incorrect input".

# If string contains 4 numbers but not consecutive it returns "not consecutive".                                                                                                                                                                                           If string contains 4 numbers but not consecutive it returns "not consecutive".

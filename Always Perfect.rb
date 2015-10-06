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


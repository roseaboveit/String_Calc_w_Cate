class StringCalc
  def initialize
  end

  def add(string_of_nums)
    if string_of_nums.include?("\n")
      string_of_nums.gsub!("\n", ",")
    end
    array_of_nums = string_of_nums.split(",")
    sum = 0
    array_of_nums.each do |num|
      sum += string_to_num(num)
    end
    return sum
  end

  def string_to_num(string)
    if string.empty?
      return 0
    else
      return string.to_i
    end
  end
end
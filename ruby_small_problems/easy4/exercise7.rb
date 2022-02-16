def string_to_integer(s)
  conversion_hash = {"1"=> 1,"2"=> 2, "3"=> 3, "4"=> 4, "5"=> 5, "6"=> 6, "7"=> 7, "8"=> 8, "9"=> 9, "0"=> 0}
  string_array = s.split("")
  power = s.length - 1
  sum_powers = 0
  index = 0
  until index == s.length do
    element_integer = conversion_hash[string_array.at(index)]
    number = element_integer * (10 ** power)
    sum_powers += number
    index += 1
    power -= 1
  end
  sum_powers
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
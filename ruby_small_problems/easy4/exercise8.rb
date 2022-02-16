def string_to_signed_integer(s)
  conversion_hash = {"1"=> 1,"2"=> 2, "3"=> 3, "4"=> 4, "5"=> 5, "6"=> 6, "7"=> 7, "8"=> 8, "9"=> 9, "0"=> 0}
  if s[0] != "+" && s[0] != "-"
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
  else 
    sign = s[0]
    shorter_s = s[1..s.length-1]
    string_array = shorter_s.split("")
    power = shorter_s.length - 1
    sum_powers = 0
    index = 0
    until index == shorter_s.length do
      element_integer = conversion_hash[string_array.at(index)]
      number = element_integer * (10 ** power)
      sum_powers += number
      index += 1
      power -= 1
    end
    if sign == "-" 
      sum_powers *= -1
    end
    sum_powers
  end
end


puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
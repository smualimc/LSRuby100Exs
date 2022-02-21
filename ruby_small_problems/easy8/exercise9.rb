def reversed_number(int)
  digs = int.digits
  number = digs.join.to_i
  #p digs, number
  number

end

puts reversed_number(12345)== 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # No leading zeros in return value!
puts reversed_number(12003) == 30021
puts reversed_number(1) == 1

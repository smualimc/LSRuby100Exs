def integer_to_string(i)
  i_ary = i.digits.reverse!
  i_hsh = {0=>"0", 1=>"1", 2=>"2", 3=>"3", 4=>"4", 5=>"5", 6=>"6", 7=>"7", 8=>"8", 9=>"9"}
  i_str = ""
  index = 0
  until index == i_ary.length do
    e_str = i_hsh[i_ary[index]]
    i_str << e_str
    index += 1
  end
  i_str
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
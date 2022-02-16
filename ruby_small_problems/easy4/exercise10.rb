def signed_integer_to_string(i)

  if i < 0 
    i *= -1
    i_str = "-"
  else
    i_str = ""
  end

  i_ary = i.digits.reverse!
  i_hsh = {0=>"0", 1=>"1", 2=>"2", 3=>"3", 4=>"4", 5=>"5", 6=>"6", 7=>"7", 8=>"8", 9=>"9"}
  
  index = 0
  until index == i_ary.length do
    e_str = i_hsh[i_ary[index]]
    i_str << e_str
    index += 1
  end
  i_str
end

puts signed_integer_to_string(4321) == '4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
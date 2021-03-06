def century(year)
  if year % 100 == 0 
    saeculum = year/100
  else
    saeculum = year/100 + 1
  end
  ending = case saeculum % 100
  when 11, 12, 13 then 'th'
  else
    case saeculum % 10
    when 1 then 'st'
    when 2 then 'nd'
    when 3 then 'rd'
    else 'th'
    end
  end
saeculum_str = saeculum.to_s
saeculum_str+ending   
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
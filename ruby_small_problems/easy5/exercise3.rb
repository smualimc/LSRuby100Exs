def after_midnight(str)
  h = str[0,2].to_i
  m = str[3,2].to_i
  if (h == 0 && m == 0) || (h == 24 && m == 0)
    mm = 0
  else
    mm = 1440-(1440 - (h*60+m))
  end
 
end

def before_midnight(str)
  h = str[0,2].to_i
  m = str[3,2].to_i
  if h == 0 && m == 0 || (h == 24 && m == 0)
    mm = 0
  else
    mm = 1440 - (h*60+m)
  end
end 


puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0

def dms(flo)
  deg = flo.to_i
  deg_flo = deg * 1.0
  min_and_sec = flo - deg_flo
  raw_min = min_and_sec * 60
  min = raw_min.to_i
  min_flo = min * 1.0
  sec_flo = (raw_min - min_flo) * 60
  sec = sec_flo.to_i

  if deg == 0
    deg_str = "0°"
  else
    deg_str = "#{deg}°"
  end

  if min == 0
    min_str = "00'"
  elsif min < 10
    min_str = "0#{min}'"
  else
    min_str = "#{min}'"
  end

  if sec == 0
    sec_str = "00\""
  elsif sec < 10
    sec_str = "0#{sec}\""
  else
    sec_str = "#{sec}\""
  end

  deg_str+min_str+sec_str
 

end 


puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")



=begin
Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String 
that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, 
a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, 
while a minute has 60 seconds.


=end
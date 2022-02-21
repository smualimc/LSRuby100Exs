def center_of(str)
  len = str.length-1
  if len.odd?
    center = str[len/2..(len/2)+1]
  else
    center = str[len/2]
  end
  center
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
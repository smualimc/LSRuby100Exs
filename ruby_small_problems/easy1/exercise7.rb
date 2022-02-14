def stringy(i)
  j = 1
  mask = ""
  until j > i do
    if j.odd?
      mask = mask + '1' 
    else
      mask = mask + '0' 
    end
    j += 1
  end
  mask
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
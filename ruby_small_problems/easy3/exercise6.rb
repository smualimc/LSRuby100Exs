def xor?(s1, s2)
  if s1 
    return true if !s2
  elsif !s1
    return true if s2
  else   
    return false
 end
end

   
puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false



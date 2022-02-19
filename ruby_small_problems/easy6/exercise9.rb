def include?(ary, value)
  i = 0
  found = false 
  until i == ary.length
    found = true if ary[i] == value
    i += 1
  end
found
end 


puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false
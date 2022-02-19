def reverse!(ary)
  index = 0
  until index == ary.length/2
    ary[index], ary[ary.length-1-index] = ary[ary.length-1-index], ary[index] 
    index += 1
  end
  ary
end
 


list = [1,2,3,4]
result = reverse!(list)
puts result == [4, 3, 2, 1] # true
puts list == [4, 3, 2, 1] # true
puts list.object_id == result.object_id # true

list = %w(a b e d c)
puts reverse!(list) == ["c", "d", "e", "b", "a"] # true
puts list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
puts reverse!(list) == ["abc"] # true
puts list == ["abc"] # true

list = []
puts reverse!(list) == [] # true
puts list == [] # true

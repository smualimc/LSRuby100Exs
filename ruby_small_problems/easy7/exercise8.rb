def multiply_list(ary1, ary2)
i = 0
ary = []
until i == ary1.length
  ary.push(ary1[i]*ary2[i])
  i += 1
end
ary
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
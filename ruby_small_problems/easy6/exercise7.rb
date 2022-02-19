def halvsies(ary)
  ary2 = []
  ary3 = ary.map {|e| e}
  ary4 = []
  index = 0
  until index > (ary.length-1)/2
    ary2[index] = ary[index]

    ary3.shift
    index += 1
    
  end
  ary4.insert(0,ary2,ary3)

end


puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]

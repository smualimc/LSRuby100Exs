def interleave(ary1, ary2)
  ary = []
  i = 0
  until i == ary1.length
    ary.push(ary1[i])
    ary.push(ary2[i])
    i += 1
  end
  ary
end
  
puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
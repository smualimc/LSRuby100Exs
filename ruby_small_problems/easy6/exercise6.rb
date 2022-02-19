def merge(ary1, ary2)
  ary3 = ary1
  index = 0
  until index == ary2.length
    ary3.push(ary2[index]) unless ary3.include?(ary2[index])
    index += 1
  end
  ary3
end



puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
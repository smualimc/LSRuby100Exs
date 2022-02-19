def multiply_all_pairs(ary1,ary2)
  i = 0
  ary = []
  until i == ary1.length
    j = 0
    until j == ary2.length
      ary.push(ary1[i]*ary2[j])
      j += 1
    end
    i += 1
  end
ary.sort
end

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
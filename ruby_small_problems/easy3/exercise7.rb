def oddities(ary)
=begin  old fashioned solution 
  ary2 = []
  i = 1
  until i > ary.length
    if i.odd?
      ary2 << ary[i-1]
    end
    i += 1
  end
    return ary2
=end

#  with_index solution: Very elegant one!

  ary2 = ary.select.with_index(1) {|number, index| index.odd?}
end


puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
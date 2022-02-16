def running_total(ary)
  index = 0
  ary_summed = []
  for index in (0..ary.length-1) do
    ary_summed.push(ary.take(index+1).sum)
    index += 1
  end
  p ary_summed
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []

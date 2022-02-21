def sum_of_sums(ary)
  i = 0
  sum = 0
  until i == ary.length
    sum += ary.take(i+1).sum
    i += 1
  end
  sum
end

puts sum_of_sums([3, 5, 2]) == 21 #(3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == 36 #(1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35
def find_fibonacci_index_by_length(int)
  fbnc = [1,1]
  index = 1
  until fbnc.last/10**(int-1) >= 1
    index += 1
    fbnc.push(fbnc[index-1]+fbnc[index-2])
  end
  fbnc.length
end


puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847


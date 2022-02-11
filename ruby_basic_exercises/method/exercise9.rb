def add(a1, a2)
  a1+a2
end

def multiply(m1, m2)
  m1*m2
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36
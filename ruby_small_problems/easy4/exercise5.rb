def multisum(limit)
  i3 = 1
  i5 = 0
  multiples = [3]
  until multiples.last == limit do 
    if (i5+1) == 1
      multiples.push(5)
      i5 += 1
      next
    end
    if 3*(i3+1) < 5*(i5+1)
      multiples.push((i3+1)*3)
      i3 += 1
    elsif 3*(i3+1) > 5*(i5+1)
      multiples.push((i5+1)*5)
      i5 += 1
    else
      multiples.push((i5+1)*5)
      i3 += 1
      i5 += 1
    end
  end
  multiples.inject(0) {|sum, e| sum + e}
end


   
puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168 
# (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20)
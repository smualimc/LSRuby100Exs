def triangle(int)
  i = 1
  until i > int
      puts "#{' '*(int-i)}#{'*'*i}"
    i += 1
  end
end 

triangle(5)
triangle(9)
=begin
    *
   **
  ***
 ****
*****
=end
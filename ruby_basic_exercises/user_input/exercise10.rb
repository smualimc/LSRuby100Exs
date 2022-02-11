number1 = nil
loop do
  puts ">> Please enter a positive or negative integer:"
  number1 = gets.chomp.to_i
  if number1 == 0
    puts ">> Invalid input. Only non-zero integers are allowed."
    next
  end
  break
end

number2 = nil
loop do
  puts ">> Please enter a positive or negative integer:"
  number2 = gets.chomp.to_i
  if number2 == 0
    puts ">> Invalid input. Only non-zero integers are allowed."
    next
  end
  if number1 * number2 < 0
    break
  else 
    puts ">> Sorry. One integer must be positive, one must be negative."
    next
  end
end

puts "#{number1} + #{number2} = #{number1 + number2}"
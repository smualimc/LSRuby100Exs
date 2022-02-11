loop do
  puts ">> How many output lines do you want? Enter a number >= 3 (Q to quit):"
  input = gets.chomp
  break if input == "q" || input == "Q"
  lines = input.to_i 
  if lines >= 3
    lines.times {puts "Launch School is the best!"}
    next
  else
    puts ">> That's not enough lines."
    next
  end
end
puts "What is the bill?"
bill = gets.chomp.to_f
puts "What is the tip percentage?"
percentage = gets.chomp.to_i
tip = bill*percentage/100
puts "The tip is $#{tip}"
puts "The total is $#{bill + tip}"

=begin    
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0
=end



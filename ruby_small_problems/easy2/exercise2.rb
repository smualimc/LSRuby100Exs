puts "Enter the length of the room in meters:"
length = gets.chomp.to_i
puts "Enter the width of the room in meters:"
width = gets.chomp.to_i
aream2 = length * width * 1.0
areaft2 = aream2 * 10.7639
puts "The area of the room is #{aream2} square meters (#{areaft2} square feet)."

=begin   
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).
=end 

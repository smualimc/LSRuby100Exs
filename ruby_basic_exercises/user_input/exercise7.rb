credentials = ["admin", "SecreT"]
loop do
  puts ">> Please enter user name:"
  usr = gets.chomp 
  puts ">> Please enter your password:"
  break if usr == credentials[0] && gets.chomp == credentials[1]
  puts ">> Authorizathion failed!" 
end
puts "Welcome!"
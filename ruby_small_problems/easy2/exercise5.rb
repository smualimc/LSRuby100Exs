puts "What is your name?" 

loop do 
  name = gets.chomp
  if name.end_with?("!")
    puts "HELLO #{name.delete_suffix("!")}. WHY ARE WE SCREAMING?"
  else
    puts "Hello #{name}."
    break
  end
end

puts "What is your age?" 
  age = gets.chomp.to_i
puts "At what age would you like to retire?"
  retirenment_age = gets.chomp.to_i
years2_retirenment = retirenment_age - age

puts "It's #{Time.new.year} You will retire in #{Time.new.year + years2_retirenment}."
puts "You have only #{years2_retirenment} years of work to go!"
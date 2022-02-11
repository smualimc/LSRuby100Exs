choice = nil
loop do
  puts "Do you want me to print something"
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice)
  puts ">> Invalid input! Please enter y or n"
end
puts "Somehthing" if choice == "y"

puts ">> Please enter an integer greater than 0:"
num = gets.chomp.to_i

range_ary = (1..num).to_a

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  puts "The sum of the integers between 1 and #{num} is #{range_ary.sum}."
else
  puts "The product of the integers between 1 and #{num} is #{range_ary.inject(1) {|product, num| product * num}}"
end


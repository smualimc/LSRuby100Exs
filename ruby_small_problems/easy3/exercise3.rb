puts "Please write word or multiple words:"
s = gets.chomp    
words_ary = s.split
n = words_ary.inject(0) {|sum, e| sum + e.length }

puts "There are #{n} characters in \"#{s}\"."
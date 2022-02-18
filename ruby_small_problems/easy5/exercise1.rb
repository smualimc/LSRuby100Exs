def ascii_value(s)
=begin
  s_ary = s.split(//)
  s_ary_ascii = s_ary.map {|e| e.ord}
  s_ary_ascii.sum
=end
# one line solution
s.split(//).map{|e| e.ord}.sum
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
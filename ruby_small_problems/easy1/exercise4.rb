vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(ary)
  ary.uniq.each {|e| puts "#{e} => #{ary.count(e)}"}
end

count_occurrences(vehicles)

=begin
  car => 4
  truck => 3
  SUV => 1
  motorcycle => 2
=end
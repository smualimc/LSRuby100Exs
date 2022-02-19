def penultimate(str)
  words = str.split
  word = words[words.length-2]
end

puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'
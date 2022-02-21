def repeater(str)
  words = str.split
  #p words
  i = 0
  chars = []
  double_chars = []
  until i == words.length
    chars[i] = words[i].split(//)
    #p chars[i]
    double_chars[i] = chars[i].map {|char| char+char}
    #p double_chars[i]
    words[i] = double_chars[i].join
    #p words[i]
    i += 1
  end
  words.join("  ")
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''

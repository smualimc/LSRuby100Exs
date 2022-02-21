def double_consonants(str)
  words = str.split
  #p words
  i = 0
  chars = []
  double_chars = []
  until i == words.length
    chars[i] = words[i].split(//)
    #p chars[i]
    double_chars[i] = chars[i].map do |char|  
      if char =~ /[a-zA-Z]/ && char =~ /[^aeiouAEIOU]/
        char+char
      else
        char
      end
    end
    #p double_chars[i]
    words[i] = double_chars[i].join
    #p words[i]
    i += 1
  end
  words.join(" ")
end

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants(' ') == ""
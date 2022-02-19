def word_cap(str)
  words = str.split
  i = 0
  until i == words.length
    words[i].capitalize!
    i += 1
  end
  words.join(" ")
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

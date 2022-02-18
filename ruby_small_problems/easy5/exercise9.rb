def crunch(str)
  words = str.split
  words_i = 0
  trim_word =[]
  until words_i == words.length
    char_word = words[words_i].split(//)
    char_word_i = 0
    trimmed_char_word = []
    trimmed_char_word_i = 0
    until char_word_i == char_word.length
      if char_word_i < char_word.length-1
        while char_word[char_word_i] == char_word[char_word_i+1]
          char_word_i += 1
        end
        trimmed_char_word[trimmed_char_word_i] = char_word[char_word_i]
        trimmed_char_word_i += 1
        char_word_i += 1
      else
        trimmed_char_word[trimmed_char_word_i] = char_word[char_word_i]
        char_word_i += 1
      end
    end
    trim_word[words_i] = trimmed_char_word.join
    words_i += 1
  end
  trim_word.join(" ")
  
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''

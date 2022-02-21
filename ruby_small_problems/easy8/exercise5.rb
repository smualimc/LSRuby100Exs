require_relative 'exercise4'

def palindromes(str)
  all_palindromes = []
  words = str.split
  #p words
  # generate substrings for words
  i = 0
  all_words = []
  nonchars_all_words = []
  palindrome_words = []
  until i == words.length
    all_words[i] = substrings(words[i])
    #p all_words[i]
    nonchars_all_words[i] = all_words[i].select {|substring| substring.length > 1}
    #p nonchars_all_words[i]
    palindrome_words[i] = nonchars_all_words[i].select {|substring| substring == substring.reverse}
    #p palindrome_words[i]
    all_palindromes.push(palindrome_words[i])
    i += 1
  end
  all_palindromes.flatten
end 

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]



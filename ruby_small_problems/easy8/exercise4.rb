def substrings(str)
  leads = []
  j = 0
  until j == str.length
    i = j
    until i == str.length
      leads.push(str[j..i])
      i += 1
    end
    j += 1
  end
  leads
end

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

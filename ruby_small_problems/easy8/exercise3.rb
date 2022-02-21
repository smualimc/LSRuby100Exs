def leading_substrings(str)
  i = 0
  leads = []
  until i == str.length
    leads.push(str[0..i])
    i += 1
  end
  leads
end

puts leading_substrings('abc') == ['a', 'ab', 'abc']
puts leading_substrings('a') == ['a']
puts leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
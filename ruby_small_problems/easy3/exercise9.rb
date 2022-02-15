def real_palindrome?(s)
  i = 0
  j = 0
  s1 = ""
  size = s.length
  until i == size do
    if ("a".."z").include?(s[i]) || ("A".."Z").include?(s[i]) || (0..9).include?(s[i])
      s1 << s[i].downcase
      j += 1
    end
    i += 1
  end
  if s1 == s1.reverse
    return true
  else
    return false
  end

end


puts real_palindrome?('madam') #== true
puts real_palindrome?('Madam') #== true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") #== true # (only alphanumerics matter)puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') #== true
puts real_palindrome?('356a653') #== true
puts real_palindrome?('123ab321') #== false

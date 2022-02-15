def palindromic_number?(i)
  ary = i.digits
  return true if ary == ary.reverse
  false
end
puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
def letter_case_count(str)
  hsh = { lowercase: 0, uppercase: 0, neither: 0 }
  chars = str.split(//)
  i = 0
  low = 0
  upp = 0
  nei = 0
  until i == str.length
    case str[i]
      when  /[a-z]/ then low += 1
      when  /[A-Z]/ then upp += 1
      else
        nei += 1
    end
    i += 1
  end
  hsh[:lowercase] = low
  hsh[:uppercase] = upp
  hsh[:neither]   = nei
  hsh
end 

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

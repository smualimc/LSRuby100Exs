def staggered_case(str)
  chars = str.split(//)
  i = 0
  upp = true
  until i == chars.length
    if upp == true
      chars[i] == chars[i].upcase! if chars[i] =~ /[a-zA-Z]/
      upp = false
    else
      chars[i] == chars[i].downcase! if chars[i] =~ /[a-zA-Z]/
      upp = true
    end
    i += 1
  end
  chars.join
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
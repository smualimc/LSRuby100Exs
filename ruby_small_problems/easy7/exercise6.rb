def staggered_case(str)
  chars = str.split(//)
  i = 0
  upp = true
  until i == chars.length
    if chars[i] =~ /[a-zA-Z]/
      if upp == true
        chars[i] == chars[i].upcase! 
        upp = false
      else
        chars[i] == chars[i].downcase! 
        upp = true
      end
    end
    i += 1
  end
  chars.join
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
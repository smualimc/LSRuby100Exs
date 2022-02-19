def swapcase(str)
  words = str.split
  i = 0
  until i == words.length  
    j = 0
    until j == words[i].length
      case words[i][j]
        when /[a-z]/ then words[i][j] = words[i][j].upcase!
        when /[A-Z]/ then words[i][j] = words[i][j].downcase!
      end
      j += 1
    end
    i += 1
  end
  words.join(" ")
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
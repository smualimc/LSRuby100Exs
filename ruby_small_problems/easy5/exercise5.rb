def cleanup(str)
  splitted_str = str.split(//)
  arranged_str = []
  splitted_index = 0
  arranged_index = 0
  
  until splitted_index == splitted_str.length 
    
    if ("a".."z").include?(splitted_str[splitted_index]) # non special character
      arranged_str[arranged_index] = splitted_str[splitted_index]
      arranged_index += 1
      splitted_index += 1
    else # special character
      if splitted_index == splitted_str.length-1 # special case the last position, no more looking ahead
        arranged_str[arranged_index] = " "
        splitted_index += 1
      else 
        splitted_index += 1
        until ("a".."z").include?(splitted_str[splitted_index])
          splitted_index += 1
        end 
        arranged_str[arranged_index] = " "
        arranged_index += 1
      end
    end
  end
  "#{arranged_str.join}"
end

puts cleanup("---what's my +*& line?") == ' what s my line '
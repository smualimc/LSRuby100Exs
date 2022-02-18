def word_sizes(str)
  by_char = str.split(//)

  without_specials = by_char.select {|element| ("a".."z").include?(element)|| ("A".."Z").include?(element)|| element == " "}
  string_again = without_specials.join
  splitted_str = string_again.split
  splitted_index = 0
  lengths_hsh = Hash.new{|h,k| h[k] = [] }
  output_hsh = {}
  until splitted_index == splitted_str.length
    
    lengths_hsh[splitted_str[splitted_index].length].push(1)
    splitted_index += 1
  end
  lengths_hsh.each {|h,k| output_hsh[h] = k.sum}
  output_hsh
end


puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}

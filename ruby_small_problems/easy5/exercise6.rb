def word_sizes(str)
  splitted_str = str.split 
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

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}

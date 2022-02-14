def reverse_sentence(s)
  reverse_ary = s.split.reverse
  i=0
  chain = ""
  until i == reverse_ary.length do
    if i == 0
      chain = chain + reverse_ary[i]
    else
      chain = chain + " " + reverse_ary[i]
    end
    i += 1
  end
  chain
end

   
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''
 
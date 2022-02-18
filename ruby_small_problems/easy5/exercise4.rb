def swap(s)
  s_ary = s.split
  index = 0
  until index == s_ary.length
    split_ary = s_ary[index].split(//)
    last_index = split_ary.length-1
    split_ary[0], split_ary[last_index] = split_ary[last_index], split_ary[0]
    s_ary[index] = split_ary.join
    index += 1
  end
  s_ary.join(" ")
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'

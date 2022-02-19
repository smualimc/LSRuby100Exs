def remove_vowels(ary)
  ary_index = 0
  until ary_index == ary.length
    chars = ary[ary_index].split(//)
    new_chars = chars.select {|e| ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"].include?(e) == false}
    ary[ary_index] = new_chars.join
    ary_index += 1
  end
  ary
end


puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

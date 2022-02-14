def reverse_words(s)
  split_ary = s.split
  i=0
  chain = ""
  until i == split_ary.length do
    if split_ary[i].length >= 5
      split_ary[i] = split_ary[i].reverse
    end

    if i == 0
      chain = chain + split_ary[i]
    else
      chain = chain + " " + split_ary[i]
    end
    i += 1
  end
  chain
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
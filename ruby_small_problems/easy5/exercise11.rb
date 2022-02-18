def spin_me(str)
  puts str.object_id
  str.split.each do |word|
    word.reverse!
  end.join(" ").object_id
end

puts spin_me("hello world") # "olleh dlrow"
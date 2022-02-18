def print_in_box(str)
  len = str.length
  x_lines = "+-"+"-"*len+"-+"
  m_lines = "| "+" "*len+" |"
  line = "| "+str+" |"
  puts x_lines
  puts m_lines
  puts line 
  puts m_lines
  puts x_lines
end

print_in_box('To boldly go where no one has gone before.')
=begin
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
=end
print_in_box('')
=begin
+--+
|  |
|  |
|  |
+--+
=end
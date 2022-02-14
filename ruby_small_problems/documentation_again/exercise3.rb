def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6) # => will print [4,5,3,6]

=begin
  It's explained in n the documentation for Calling Methods, 
  under Default Positional Arguments, 
=end
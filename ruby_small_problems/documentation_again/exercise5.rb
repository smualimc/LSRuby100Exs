a = %w(a b c d e)
puts a.fetch(7)                       # => returns IndexError
puts a.fetch(7, 'beats me')           # => returns 'beats me
puts a.fetch(7) { |index| index**2 }  # => returns 49

# Documentation for Array class under #fetch
s = 'abc'
puts s.public_methods(all=false).inspect

# As the documentation for Object class #public_methods: public_methods(all=true) → array
# If the all parameter is set to false, only those methods in the receiver will be listed.
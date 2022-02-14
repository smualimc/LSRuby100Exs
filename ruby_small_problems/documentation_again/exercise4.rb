a = [1, 4, 8, 11, 15, 19]
# How would you search this Array to find the first element whose value exceeds 8?

# I saw documentation for Array class, #bsearch method
# In find-minimum mode, method bsearch returns the first element for which the block returns true.

puts a.bsearch {|e| e > 8}
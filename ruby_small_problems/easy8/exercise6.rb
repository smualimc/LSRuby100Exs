def fizzbuzz(i1, i2)
  str = []
  (i1..i2).each do |number|
    if number % 3 == 0
      if number % 5 == 0
        str << "FizzBuzz"
      else
        str << "Fizz"
      end
    else
      if number % 5 == 0
        str << "Buzz"
      else
        str << number.to_s
      end
    end
  end
puts str.join(", ")
end
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
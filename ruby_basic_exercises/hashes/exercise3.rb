car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000,
  year:    2003
}

puts car.delete(:mileage) # returns the associated value

p car

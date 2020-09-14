car = {
  type: 'sedan',
  color: 'blue',
  mileage: 80_000
}
p car

car[:year] = 2003
p car

car.delete(:mileage)
p car

puts car[:color]

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each { |key, value| puts "A #{key} number is #{value}" }

half_numbers = numbers.map { |key, value| value / 2}
p half_numbers

low_numbers = numbers.select! { |key, value| value < 25 }
p low_numbers
p numbers

vehicles = {
  car: {
    type: 'sedan',
    color: 'blue',
    year: 2003
  },
  truck: {
    type: 'pickup',
    color: 'red',
    year: 1998
  }
}
p vehicles

car = [[:type, "sedan"], [:color, "blue"], [:year, 2003]]

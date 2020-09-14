pets = ['cat', 'dog', 'fish', 'lizard']
my_pet = pets[2]
puts "I have a pet #{my_pet}"

my_pets = pets[2..3]
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}"

my_pets.pop
puts "I have a pet #{my_pets.join}"

my_pets << pets[1]
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}"

colors = ['red', 'yellow', 'purple', 'green']

colors.each {|color| puts "I'm the color #{color}"}

numbers = [1, 2, 3, 4, 5]
doubled_numbers = numbers.map {|num| num * 2}
p doubled_numbers

numbers = [5, 9, 21, 26, 39]
divisible_by_three = numbers.select {|num| num % 3 == 0}
p divisible_by_three

['Dave', 7, 'Miranda', 3, 'Jason', 11]
favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]
p favorites.flatten

array1 = [1, 5, 9]
array2 = [1, 9, 5]

puts array1 == array2
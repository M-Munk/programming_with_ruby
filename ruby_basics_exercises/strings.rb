empty_str = ""
empty_string = String.new

puts "It's now 12 o'clock"

name = 'Roger'
compare_name = 'RoGeR'

puts name.downcase == compare_name.downcase

other_name = 'DAVE'

puts name.downcase == other_name.downcase

puts name.casecmp(compare_name) == 0
puts name.casecmp(other_name) == 0

name = 'Elizabeth'

puts "Hello, #{name}!"

first_name = 'John'
last_name = 'Doe'

full_name = "#{first_name} #{last_name}"
puts full_name

puts full_name = [first_name, last_name].join(" ")

state = 'tExAs'
puts state.capitalize!

greeting = 'Hello!'
puts greeting

greeting.gsub!("Hello!", "Goodbye!")
puts greeting

alphabet = 'abcdefghijklmnopqrstuvwxyz'
puts alphabet.split(//)

words = 'car human elephant airplane'
words.split.each {|word| puts "#{word}s"}

colors = 'blue pink yellow orange'
puts colors.include?("yellow")
puts colors.include?("purple")

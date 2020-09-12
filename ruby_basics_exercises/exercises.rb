loop do 
  puts 'Just keep printing...'
  break
end

loop do
  puts 'This is the outer loop.'
  loop do
    puts 'This is the inner loop.'
    break
  end
  break
end

puts 'This is outside all loops.'

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  if iterations == 6
    break
  end
end

# can also be:
iterations = 1
loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
end

say_hello = true
i = 0
while say_hello
  puts 'Hello!'
  i += 1
  if i == 5
    say_hello = false
  end
end

numbers = []
count = 0
while count < 5
  numbers[count] = rand(99)
  count += 1
end
puts numbers

#book answer
numbers = []

while numbers.size < 5
  numbers << rand(100)
end

puts numbers

count = 0

until count == 10
  puts count
  count += 1
end

numbers = [7, 9, 13, 25, 18]
i = 0
until i == 5
  puts numbers[i]
  i += 1
end

for i in 1..100
  puts i if i.odd?
end

friends = ['Sarah', 'John', 'Hannah', 'Dave']
for friend in friends
  puts "Hello #{friend}"
end
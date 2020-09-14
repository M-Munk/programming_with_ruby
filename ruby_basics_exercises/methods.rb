def print_me
  puts "I'm printing within the method!"
end

print_me

def print_return
  "I'm printing the return value!"
end

puts print_return

def hi
  "Hello"
end

def world
  "World"
end

puts hi + " " + world
puts "#{hi} #{world}"

def greet
  "#{hi} #{world}"
end

puts greet

def car(make, model)
  puts "#{make} #{model}"
end

car('Toyota', 'Corolla')

daylight = [true, false].sample

def time_of_day(am_pm)
  puts am_pm ? "It's daytime!" : "It's nighttime!"
end

puts time_of_day(daylight)

def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}."

def assign_name(name = 'Bob')
  name
end

puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'

def add (a, b)
  a + b 
end

def multiply(a, b)
  a * b 
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36

def name(arr)
  arr.sample
end

def activity(arr)
  arr.sample
end

def sentence(who, what)
  "#{who} went #{what} today!"
end

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts sentence(name(names), activity(activities))


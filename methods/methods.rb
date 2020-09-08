#program should contain a method called 
#greeting that takes a name as its parameter 
#and returns a string.

def greeting(name)
  p message = "Hello #{name}"
end

greeting("Melanie")

# what do the following expressions evaluate to?
# 1. x = 2
# => 2

# 2. puts x = 2
# => nil

# 3. p name = "Joe"
# => "Joe"

# 4. four = "four"
# => "four"

# 5. print something = "nothing"
# => nil

# Write a program that includes a method called multiply that takes two arguments 
# and returns the product of the two numbers.

def multiply(a, b)
  a * b
end

multiply(6, 9)

# What will the following code print to the screen?
# def scream(words)
#   words = words + "!!!!"
#   return
#   puts words
# end

# scream("Yippeee")

# nothing because of return statement before puts 

# edit scream so that it does print words on the screen
def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")

# prints Yippeee!!!!

# What does the following error message tell you?

# ArgumentError: wrong number of arguments (1 for 2)
#   from (irb):1:in `calculate_product'
#   from (irb):4
#   from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

# the method is looking for 2 arguments passed in, and only one was passed.  
# It has no default parameters defined.

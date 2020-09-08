(32 * 4) >= 129  # => false
false != !true  # => false
true == 4  # => false
false == (847 == '874')  # => true
(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false  # => true

# Write a method that takes a string as argument. 
# The method should return a new, all-caps version of the string, 
# only if the string is longer than 10 characters. 
# Example: change "hello world" to "HELLO WORLD". 
# (Hint: Ruby's String class has a few methods that would be helpful. 
# Check the Ruby Docs!)

def captialize(str)
  return str.upcase if str.length > 10
end

captialize("hello world")

# Write a program that takes a number from the user between 0 and 100 
# and reports back whether the number is between 
# 0 and 50, 51 and 100, or above 100.

puts "Please enter a number between 0 and 100"
number = gets.chomp.to_i

def evaluate_number(num) 
  case
  when (num >= 0 && num <= 50)
    puts "between 0 and 50"
  when (num > 50 && num <= 100)
    puts "between 51 and 100"
  when num > 100 
    puts "above 100"
  else 
    puts "you should use positive numbers"
  end
end

evaluate_number(number)


#What will each block of code below print to the screen? 
#Write your answer on a piece of paper or in a text editor 
#and then run each block of code to see if you were correct.
    
# Snippet 1
'4' == 4 ? puts("TRUE") : puts("FALSE")  # => FALSE

# Snippet 2
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end
# => Did you get it right?

# Snippet 3
y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end
# => Alright now!

# When you run the following code:
# def equal_to_four(x)
#   if x == 4
#     puts "yup"
#   else
#     puts "nope"
# end

# equal_to_four(5)

#you get the following error message:

#exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end

#Why do you get this error and how can you fix it?

# the definition is missing the end statement, you will need to add it like so:

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end

equal_to_four(5)
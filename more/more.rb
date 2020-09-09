#Write a program that checks if the sequence of characters "lab" exists in the following 
#strings. If it does exist, print out the word.

w1 = "laboratory"
w2 = "experiment"
w3 = "Pans Labyrinth"
w4 = "elaborate"
w5 = "polar bear"

def check_lab(word)
  if /lab/.match(word)
    p word
  end
end

check_lab(w1)
check_lab(w2)
check_lab(w3)
check_lab(w4)
check_lab(w5)

# What will the following program print to the screen? What will it return?
def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }
# Prints nothing to the screen because the block is not called
# Returns a proc object

# What is exception handling and what problem does it solve?
# Exception handling is handling errors so that they do not stop the execution of a program
# It solves the problem of unpredicatable user data, bad data, or corrupted information
# and unpredicatble interactions with the program.

# Modify the code in exercise 2 to make the block execute properly.

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# Why does the following code...

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# Give us the following error when we run it?

# block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
# from test.rb:5:in `<main>'

# the & is missing in the parameters and the way it is written currently, 
# the method is not expecting a block argument to be passed in

#What does the each method in the following program return 
#after it is finished executing?

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

# .each returns the array itself:
# => [1, 2, 3, 4, 5]

#Write a while loop that takes input from the user, 
#performs an action, and only stops when the user types "STOP". 
#Each loop can get info from the user.

input = gets.chomp

while input != "STOP"
  puts input
  input = gets.chomp
end

# Write a method that counts down to zero using recursion.

def countdown(number)
  if number <= 0
    puts number
  else
    puts number
    countdown(number - 1)
  end
end

puts countdown(99)
puts ">> Type anything you want: "
phrase = gets.chomp
puts phrase

puts ">> What is your age in years?"
age = gets.chomp.to_i
puts "You are #{age * 12} months old."

puts ">> Do you want me to print something? (y/n)"
answer = gets.chomp
puts "something" if answer == "y"  || answer == "Y"

loop do
  puts ">> Do you want me to print something? (y/n)"
  another_answer = gets.chomp.upcase
  if another_answer == "Y"
    break puts "something"
  elsif another_answer == "N"
    break
  else
    puts "Invalid Input! Please enter y or n"
  end
end

loop do
  puts ">> How many output lines do you want? Enter a number >= 3:"
  answer = gets.chomp.to_i
  if answer >= 3
    break answer.times { |i| puts "Launch School is the best!" }
  else 
    puts "That's not enough lines."
  end
end

Password = "password"

loop do
  puts ">> Please enter your password:"
  break if gets.chomp == Password
  puts "Invalid password!"
end

puts "Welcome!"

User_Name = "admin"

loop do
  puts ">> Please enter your user name:"
  test_user = gets.chomp
  puts ">> Please enter your password:"
  test_password = gets.chomp 
  break if test_user == User_Name && test_password == Password
  puts "Authorization failed!"
end

puts "Welcome!"

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

def division(a, b)
  a / b 
end

numerator = nil
denominator = nil

loop do
  puts ">> Please enter the numerator:"
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts ">> Invalid input. Only integers are allowed."
end

loop do
  puts ">> Please enter the denominator"
  denominator = gets.chomp
  if denominator == "0"
    puts ">> Invalid input. A 0 denominator is not allowed."
  else
    break if valid_number?(denominator)
    puts ">> Invalid input. Only integers are allowed"
  end
end

puts "#{numerator} / #{denominator} is #{division(numerator.to_i, denominator.to_i)}"



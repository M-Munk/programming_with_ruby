# Exercises

# Add two strings together that, when concatenated, 
#return your first and last name as your full name in one string.
first_name = "Melanie"
last_name = "Munk"
puts "#{first_name} #{last_name}"


#Use the modulo operator, division, or a combination of both 
#to take a 4 digit number and find the digit in the: 
#1) thousands place 2) hundreds place 3) tens place 4) ones place
thousands = 1234 / 1000
hundreds = 1234 % 1000 / 100
tens = 1234 % 100 / 10
ones = 1234 % 10
puts thousands
puts hundreds
puts tens
puts ones

#Write a program that uses a hash to store a list of movie titles with 
#the year they came out. Then use the puts command to make your program 
#print out the year of each movie to the screen. 
movies = {
  :star_wars => 1977,
  :empire_strikes_back => 1980,
  :return_of_the_jedi => 1983,
  :phantom_menace => 1999,
  :attack_of_the_clones => 2002,
  :revenge_of_the_sith => 2005,
  :force_awakens => 2015,
  :last_jedi => 2017,
  :rise_of_skywalker => 2019
}
movies.each { |key, value| puts value}

#Use the dates from the previous example and store them in an array. 
#Then make your program output the same thing as exercise 3.
years = []
movies.each { |key, value| years << value }
years.each { |year| puts year }

#Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
def factorial(x)
  i = 1
  result = 1
  until i > x
    result *= i
    i +=1
  end
  puts result
end

factorial(5)
factorial(6)
factorial(7)
factorial(8)



#Write a program that calculates the squares of 3 float numbers of your choosing 
#and outputs the result to the screen.
puts 3.14**2
puts 5.293**2
puts 123.345**2

#What does the following error message tell you?
#SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
#  from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>'

# The message tells you that you have opened braces but have not closed them
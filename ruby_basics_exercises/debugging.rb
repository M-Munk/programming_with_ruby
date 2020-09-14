def find_first_nonzero_among(*numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

puts find_first_nonzero_among(0, 0, 1, 0, 2, 0)
puts find_first_nonzero_among(1)

# error : wrong number of arguments (given 6, expected 1)
# error: undefined method 'each' for Integer (NoMethodError)

# both of these can be corrected with the addition of splat operator (*)
# before numbers in the method's arguments  This will convert the argument 
# list into an array which has the each method and will become
# 1 argument instead of 6.

# alternately you can convert arguments into an array by hand.

def predict_weather
  sunshine = ['true', 'false'].sample
  
  if sunshine == 'true'
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

# sunshine's value is taken from an array of strings, and is not
# a Boolean value.  It will always be truthy with either value 
# assigned.  The problem can be fixed by either changing sunshine
# to sample a value from an array of Boolean values, or by adding
# a comparison operator as above to determine if the 'true' string 
# was selected.
def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp.to_i

puts "The result is #{multiply_by_five(number)}!"

# gets returns a string.  You will need to convert the string to an 
# integer to perform math

pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog] << 'bowser'

p pets 

# corrected reassignment to instead add 'bowser' to the existing 
# array of dogs

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.map do |n|
  n if n.even?
end
# map returns an array of the same length as the original 
# array and is not suitable for this problem.
# correct method should be the following:
even_numbers = numbers.select { |n| n.even? }

p even_numbers # expected output: [2, 6, 8]

def get_quote(person)
  if person == 'Yoda'
    'Do. Or do not. There is no try.'
  elsif person == 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  elsif person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts "\"#{get_quote('Confucius')}\""

# the original code checked each condition separately and had no return statements. Since the last 
# condition evaluated returned nil (einstein case), you get the "TypeError, no implicit conversion
# of nil into a String". Refactoring solves the issue.

# Financially, you started the year with a clean slate.

balance = 0

# Here's what you earned and spent during the first three months.

january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

# Let's see how much you've got now...

def calculate_balance(period)
  plus  = period[:income].sum
  minus = period[:expenses].sum

  plus - minus
end

[january, february, march].each do |month|
  balance += calculate_balance(month)
end

puts balance

# the problem here was that you were not adding the balance from each month together to get the 
# total balance => you were only giving balance a value of the last month's balance called in 
# the each loop

colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i >= things.length

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

# things is shorter in length than colors, and this program was written to iterate past that length 
# this giving the TypeError: no implicit conversion of nil into a String.  Changed break parameter
# to end after reaching the length of the things array to not go past the number of values contained there

def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 1

  digits.each do |digit|
    product *= digit
  end

  product
end


p digit_product('12345')
# expected return value: 120
# actual return value: 0
# actual return value was 0 because product was given an initial value of 0. 0 times any number
# is 0. Changing product to an initial value of 1 will allow you to get the proper output.

# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase.to_sym

player = player.merge(character_classes[input])

puts 'Your character stats:'
puts player

# input needs to be converted to a symbol to match they key type in character_classes
# merge returns a new hash which we need to assign in order to update the player's stats


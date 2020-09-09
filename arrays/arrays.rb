# Write a program that checks to see if the number appears in the array.
arr = [1, 3, 5, 7, 9, 11]
number = 3
arr.include?(number)

#What will the following programs return? What is the value of arr after each?
arr = ["b", "a"]
arr = arr.product(Array(1..3)) 
arr.first.delete(arr.first.last)
   # => 1
   # arr => [["b"] ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a, 3"]]
   
arr = ["b", "a"]
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)
   # => [1, 2, 3]
   # arr => [["b"], ["a", [1, 2, 3]]]

# How do you return the word "example" from the following array?

arr = [["test", "hello", "world"],["example", "mem"]]
arr[1][0]
# or
arr.last.first
# What does each method return in the following example?

arr = [15, 7, 18, 5, 12, 8, 5, 1]

arr.index(5) # => 3

arr.index[5] # NoMethodError (undefined method `[]' for #<Enumerator: [15, 7, 18, 5, 12, 8, 5, 1]:index>)

arr[5] # => 8

# What is the value of a, b, and c in the following program?

string = "Welcome to America!"
a = string[6] # => "e"
b = string[11] # => "A"
c = string[19] # => nil

# You run the following code...
names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'
# ...and get the following error message:
# TypeError: no implicit conversion of String into Integer
#   from (irb):2:in `[]='
#   from (irb):2
#   from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

# What is the problem and how can it be fixed?
# names[] is looking for an integer value of an index to return the value at that index
# assuming what the user wanted to do was replace 'margaret' with 'jody' you could: 
names[names.index('margaret')] = 'jody'

# Use the each_with_index method to iterate through an array of your creation 
#that prints each index and value of the array.

movies = ["A New Hope", "The Empire Strikes Back", "Return of the Jedi"]

movies.each_with_index { |movie, i| puts "#{movie}: #{i}" }

# Write a program that iterates over an array and builds a new array 
# that is the result of incrementing each value in the original array by a 
# value of 2. You should have two arrays at the end of this program, 
# The original array and the new array you've created. 
# Print both arrays to the screen using the p method instead of puts.

arr = Array(1..10)
new_arr = arr.map { |num| num+2 }
p arr
p new_arr


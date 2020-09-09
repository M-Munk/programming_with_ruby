# Given a hash of family members, with keys as the title and an 
#array of names as the values, use Ruby's built-in select method 
#to gather only immediate family members' names into a new array.

family = {  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}

immediate_family = family.select { |key, value| key == :sisters || key == :brothers}
arr = immediate_family.values.flatten
p arr

# Look at Ruby's merge method. Notice that it has two versions. 
#What is the difference between merge and merge!? 
#Write a program that uses both and illustrate the differences.

# merge returns a new hash combining the contents of hash and other hash.
# If duplicate keys exist and no block is specified, the value for the entries
# with duplicate keys will be that of other hash.  If a block is specified,
# the value for each duplicate key is determined by calling the block.

# merge! adds the content of other hash to hash and mutates hash.  
# The mutated hash is returned.  If no block is specified, entries with duplicate
# keys are overwritten with values from other hash.  Otherwise, the value of each
# duplicate key is determined by calling the block.

john_animals = {
  dog: "woof",
  cat: "meow",
  bird: "tweet"
}

amy_animals = {
  dog: "bark",
  horse: "neigh",
  owl: "whoooo"
}

our_animals = john_animals.merge(amy_animals)
p our_animals
p john_animals
p amy_animals

john_animals.merge!(amy_animals)
p john_animals
p amy_animals

#Using some of Ruby's built-in Hash methods, write a program that loops 
#through a hash and prints all of the keys. Then write a program that does 
#the same thing except printing the values. Finally, write a program that 
#prints both

our_animals.each { |key, value| puts "#{key}"}
our_animals.each { |key, value| puts "#{value}" }
our_animals.each { |key, value| puts "#{key} says #{value}" }

# Given the following expression, how would you access the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

puts person[:name]

# What method could you use to find out if a Hash contains a specific value in it? 
# Write a program to demonstrate this use.

# has_value?
puts our_animals.has_value?("chirp")
puts our_animals.has_value?("neigh")

#What's the difference between these 2 hashes:

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

# my_hash has the symbol :x for a key whereas my_hash2 has the variable x currently
# assigned the value of "hi there" as a key.

#If you see this error, what do you suspect is the most likely problem?
#NoMethodError: undefined method `keys' for Array

# You are trying to use a hash method (keys) on an array or you chained methods on a 
# has and one of the earlier methods returned an array but a later method (keys) 
# needs a hash as input.
# from the multiple choice, the most likely answer is B - there is no method
# called keys for Array objects.

# Challenge: Given the array...
# Write a program that prints out groups of words that are anagrams. 
# Anagrams are words that have the same exact letters in them 
# but in a different order. Your output should look something like this:







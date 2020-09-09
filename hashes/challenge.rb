# problem: determine words that have the same letters and return and array of 
# those words
# should return a different array for each set of words with the same letters
# chars method returns an array of characters from a string
# map iterates over an array applying a block to each element returning a new array with the results
# sort orders an array

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

# arrange words into sorted array for comparison

# iterate through words
# arrange word into a key based on alphabetical sorting of the word
# if the key does not exist, add the key and add word to value array
# if the key already exists, just add the value 
# print values
anagrams = {}
words.each do |word|
  key = word.chars.sort.join
  unless anagrams.has_key?(key)
    anagrams[key] = [word]
  else anagrams[key].push(word)
  end
end
anagrams.each { |key, value| p value}






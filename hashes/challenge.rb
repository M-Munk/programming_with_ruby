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
def arrange_word(word)
  word.chars.sort
end

# temporary array to allow for mutating
temp_words = words

#start with the first word
#compare it to each other word
#if words match, create a new array and push first + each match in
#delete items that match from original array 
#print array of matches when down if array isn't empty
#delete the word
#continue finding matches with new first word until temp_words is empty

until temp_words.empty?
  arr = []
  first_word = temp_words.first
  temp_words.delete(first_word)
  temp_words.each do |word|
    if arrange_word(first_word) == arrange_word(word)
      arr.push(word)
      temp_words.delete(word)
    end
  end
  if !arr.empty?
    arr.unshift(first_word)
  end
  if !arr.empty?
    p arr
  end
end





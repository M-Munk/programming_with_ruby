arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each { |num| puts num}

arr.each { |num| puts num if num > 5}

odd = arr.select { |num| num.odd?}
puts odd

arr.push(11)
p arr

arr.unshift(0)
p arr

arr.pop
p arr

arr.push(3)
p arr

arr.uniq!
p arr

# 7 an Array is an ordered list by index. A hash is a list of 
# key:value pairs not necessarily ordered

old_hash = {:school => "West Point" }
p old_hash

new_hash = { school: "West Point"}
p new_hash

h = {a:1, b:2, c:3, d:4}

puts h[:b]
h[:e] = 5
p h

h.each do |key, value| 
  if value < 3.5
    h.delete(key)
  end
end
p h 

#hashes with arrays
person = {
  name: "Melanie",
  schools: ["West Point", "University of Maryland", 
    "St. Mary's University"],
  work: ["US Army", "FVPS", "UTA"],  
  pets: ["Reese", "Peanut"]
}
p person
#array of hashes
arr2 = [old_hash, new_hash]
p arr2

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]


contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

p contacts

puts "Joe Smith's email is #{contacts["Joe Smith"][:email]}"
puts "Sally Johnson's phone# is #{contacts["Sally Johnson"][:phone]}"

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |str| str.start_with?("s") }
p arr

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |str| str.start_with?("s", "w") }
p arr

a = ['white snow', 'winter wonderland', 'melting ice',
  'slippery sidewalk', 'salted roads', 'white trees']

 a.map! {|str| str.split(' ')}
 a.flatten!
 p a 

 #15 "These hashes are the same"

 hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
# contact_data_hash = {}
# contact_data.each do |item| 
#   contact_data_hash[:email] = contact_data.shift
#   contact_data_hash[:address] = contact_data.shift
#   contact_data_hash[:phone] = contact_data.shift
# end
# p contact_data_hash
# contacts["Joe Smith"] = contact_data_hash
# p contacts
# refactor =>
fields = [:email, :address, :phone]
contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end
p contacts
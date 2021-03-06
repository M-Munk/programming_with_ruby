sun = ['visible', 'hidden'].sample

if sun == 'visible'
  puts "The sun is so bright!"
end

unless sun == 'visible'
  puts "The clouds are blocking the sun!"
end

puts "The sun is so bright!" if sun == "visible"
puts "The clouds are blocking the sun!" unless sun == "visible"

boolean = [true, false].sample
puts boolean ? "I'm true!" : "I'm false!"

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'
  puts 'Go!'
when 'yellow'
  puts 'Slow Down!'
else
  puts 'Stop!'
end

if stoplight == 'green'
  puts 'Go!'
elsif stoplight == 'yellow'
  puts 'Slow Down!'
else 
  puts 'Stop!'
end

status = ['awake', 'tired'].sample

if status == 'awake'
  puts "Be productive!"
else 
  puts "Go to sleep!"
end

number = rand(10)

if number == 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
  when 'green' then puts 'Go!' 
  when 'yellow' then puts 'Slow down!' 
  else puts 'Stop!'
end
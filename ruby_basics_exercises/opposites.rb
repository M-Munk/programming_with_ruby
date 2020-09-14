def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def get_num 
  loop do
    puts "Please enter a positive or negative integer"
    num = gets.chomp
    return num.to_i if valid_number?(num)  
    puts "Invalid input. Only non-zero integers are allowed"
  end
end

first_num = nil
second_num = nil

loop do
  first_num = get_num()
  second_num = get_num()
  break if (first_num > 0 && second_num < 0) || (first_num < 0 && second_num > 0)
  puts "Sorry. One integer must be positive, one must be negative."
  puts "Please start over"
end

answer = first_num + second_num
puts "#{first_num} + #{second_num} = #{answer}"

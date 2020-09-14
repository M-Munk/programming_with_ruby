def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

def get_lines
  lines = nil
  loop do
    puts '>> How many output lines do you want? Enter a number >= 3:'
    lines = gets.chomp
    if valid_number?(lines)
      break if lines.to_i >= 3
      puts ">> That's not enough lines."
    end
    break if !valid_number?(lines)
  end
  return lines
end

def print_lines(num)
  num.times {puts "Launch School is the Best!"}
end

number_of_lines = nil
stopped = false

until stopped
  number_of_lines = get_lines()
  print_lines(number_of_lines.to_i) if valid_number?(number_of_lines)
  stopped = true if number_of_lines.downcase == 'q'
end
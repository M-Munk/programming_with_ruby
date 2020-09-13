def hello(name = "World")
  name = "World" if name == ""
  return "Hello, #{name.capitalize}!"
end

def hello(name = "World")
  name = "World" if name.empty?
  return "Hello, #{name.capitalize}!"
end

def is_divide_by(number, a, b)
  # good luck
  number % a == 0 && number % b == 0
end

def get_average(marks)
  sum = 0
  marks.each {|grade| sum += grade}
  result = sum / marks.length
end

def check_alive(health)
  health > 0
end

def next_id(arr)
  i = 0
  loop do
    if arr.index(i) == nil
      break
    end
    i += 1
  end
  return i
end
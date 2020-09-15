def descending_order(n)
  arr = n.to_s.split("")
  arr.sort.reverse.join.to_i
end

def silly_add(a, b)
  # your code here
  arr_a = a.to_s.split("")
  arr_b = b.to_s.split("")
  result = []
  if arr_a.length != arr_b.length
    arr_a.length > arr_b.length ?  longest = arr_a :  longest = arr_b
    arr_a.length < arr_b.length ? shortest = arr_a : shortest = arr_b
  else 
    longest = arr_a
    shortest = arr_b
  end  
  until longest.empty? do 
    if shortest.empty?
      result << longest.pop
    else
      result << (longest.pop.to_i + shortest.pop.to_i)
    end
  end

 ## must have a space before the ? in a ternary operation

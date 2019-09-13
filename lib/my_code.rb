# Your Code Here
def map(array)
  new_array = []
  for i in array do
    new_array.push(yield(i))
  end
  new_array
end 

def reduce (array, starting_point = false)
  if starting_point
    total = starting_point
  end
  for i in array do
    yield(total, i)
  end 
  if total == nil 
    return false
  end 
  total
end 
# Your Code Here
def map(array)
  new_array = []
  for i in array do
    new_array.push(yield(i))
  end
  new_array
end 

def reduce (array, starting_point = nil)
  total = starting_point
  for i in array do 
    yield(total)
  end
  total
end 
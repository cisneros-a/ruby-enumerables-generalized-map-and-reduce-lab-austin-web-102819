def map(array)
  new_array = []
  i = 0
  while i < array.length
    new_array << yield(array[i])
    i += 1
  end
  new_array
end

def reduce(array, starting_point = nil)
  if starting_point
    sum = sv
    i = 0
  else
    sum = array[0]
    i = 1
  end
  while i < array.length
    yield (sum, array[i])
  end 
end

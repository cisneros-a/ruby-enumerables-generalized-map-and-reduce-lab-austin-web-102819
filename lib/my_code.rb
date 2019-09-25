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
    num1 = sv
    i = 0
  else
    num1 = array[0]
    i = 1
  end
  while i < array.length
    yield (num1, array[i])
end

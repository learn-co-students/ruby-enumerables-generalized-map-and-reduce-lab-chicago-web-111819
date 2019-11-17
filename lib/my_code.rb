def map(given_arr)
  new_arr = []
  i = 0
  while i < given_arr.length
    new_arr.push(yield(given_arr[i]))
    i += 1
  end #while
  new_arr
end #def

def reduce(given_array, starting_value = nil)
  if starting_value
    sum = starting_value
    i = 0
  else
    sum = given_array[0]
    i = 1
  end #if
  
  while i < given_array.length
    sum = yield(sum, given_array[i])
    i += 1
  end #while
  sum
end #def
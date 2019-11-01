
def map(g)
  array = []

   g.each do |element|
    array << yield(element)
  end

   return array
end

def reduce(array, starting_point = 0)

   array.each do |element|
    starting_point = yield(starting_point, element)
  end

   if starting_point == 0
    return true
  end

   return starting_point
end
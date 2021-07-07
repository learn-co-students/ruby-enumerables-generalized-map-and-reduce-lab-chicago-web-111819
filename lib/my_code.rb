# Your Code Here

def map(source)
  new = []
  i = 0
  
  while i < source.length do
    new << yield(source[i])
    i += 1
  end  
  new
end



def reduce(source, start = nil)
  
  if start
    total = start
    i = 0
  else
    total = source[0]
    i = 1
  end
  while i < source.length do
    total = yield(total, source[i])
    i += 1
  end
  total
end  















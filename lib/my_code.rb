def map(inputarray)
  new = []
  i = 0
  while i < inputarray.length do
    new << yield(inputarray[i])
    i += 1
  end
 return new
end

def reduce(inputarray, startingvalue=nil)
 i = 0
 if startingvalue
  output = startingvalue
  else
  output = inputarray[0]
  i += 1
 end
 while i < inputarray.length do
   output = yield(output, inputarray)
   i += 1
  end
 return output
end

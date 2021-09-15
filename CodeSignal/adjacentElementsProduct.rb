
# https://app.codesignal.com/arcade/intro/level-2/xzKiBHjhoinnpdh6m 

def adjacentElementProduct(array) 
  max = array[0] * array[1] 
  last = array.length - 1 
  i = 0 

  while last > i  
    if (array[i] * array[i+1]) > max 
      max = (array[i] * array[i+1])  
    end
    i += 1 
  end

  return max  
end 

# another approach  

def adjacentElementProduct(array) 
  array.each_cons(2).map { |a, b| a * b }.max 
end 

def bsearch(array, item) 
  low = 0 
  high = array.length - 1 
  
  while high > low 
    mid = (high + low) / 2  
    
    if array[mid] == item 
      return item  
    elsif mid > item 
      high = mid - 1 
    else 
      low = mid + 1 
    end 
  end  

  return "not found"
end 

p bsearch([0, 1, 1, 2, 5, 8, 9], 7)

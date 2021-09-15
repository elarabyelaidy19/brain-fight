def binary_search(array, ele) 

  lo = 0 
  hi = array.length - 1


  while hi >= lo 
    mid = lo+((hi-lo)/2)
    
    if array[mid] == ele 
      return mid 
    elsif array[mid] < ele 
      lo = mid + 1 
    else 
      hi = mid - 1 
    end 
  end
  
  return " value not found"
end 

p binary_search([0, 1, 1, 2, 5, 8, 9], 1)


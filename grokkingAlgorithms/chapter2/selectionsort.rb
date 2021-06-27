
def selectionsort(array) 
  
  n = array.length - 1 
  (0..n).each do |i| 
    min = i 
    (i+1..n).each do |j| 
      if array[j] < array[min] 
        array[j], array[min] = array[min], array[j] 
      end 
    end 
  end 

  return array 
end 


p selectionsort([2,6, 3, 45, 17, 14, 2]) 
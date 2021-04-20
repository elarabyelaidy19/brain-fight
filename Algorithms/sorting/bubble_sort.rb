# Time-complexity: O(n^2) 



def bubble_sort(arr)

  for i in 0...arr.length - 1 
    for j in 0...arr.length - i - 1
      if arr[j] > arr[j+1] 
        arr[j], arr[j+1] = arr[j+1], arr[j] 
      end 
    end 
  end 

  return arr 

end 

p bubble_sort([2, 5, 8, 1, 1, 9, 0,]) 

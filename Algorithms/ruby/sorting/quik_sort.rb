def  quik_sort(arr) 

  return arr if arr.length <= 1

  pivot = arr.first 
  left_side = arr[1..-1].select { |ele| ele < pivot } 
  right_side = arr[1..-1].select { |ele| ele >= pivot } 

  quik_sort(left_side) + [pivot] + quik_sort(right_side)

end 


p quik_sort([2, 5, 8, 1, 1, 9, 0,])
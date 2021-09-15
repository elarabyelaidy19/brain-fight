def merge_sort(arr)
  return arr if arr.length <= 1 
 
  mid = arr.length/2
  left_arr = arr[0...mid]
  right_arr = arr[mid..-1]

  sorted_left_arr = merge_sort(left_arr)
  sorted_right_arr = merge_sort(right_arr)

  merge(sorted_left_arr, sorted_right_arr)
 end

def merge(left_arr, right_arr) 
  merged_array = []
  left_arr_idx = 0 
  right_arr_idx = 0 

  while left_arr_idx < left_arr.length && right_arr_idx < right_arr.length 
    if left_arr[left_arr_idx] <= right_arr[right_arr_idx] 
      merged_array << left_arr[left_arr_idx] 
      left_arr_idx += 1
    else 
      merged_array << right_arr[right_arr_idx] 
      right_arr_idx += 1 
    end 
  end

  while left_arr_idx < left_arr.length 
    merged_array << left_arr[left_arr_idx] 
    left_arr_idx += 1 
  end 

  while right_arr_idx < right_arr.length
    merged_array << right_arr[right_arr_idx] 
    right_arr_idx += 1 
  end 

  merged_array 
end 

p merge_sort([2, 7, 9, 12, 1, 0, 5])







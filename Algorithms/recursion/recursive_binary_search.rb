
  
def bsearch(array, target )
  
  return nil if array.empty? 

  mid_index = array.length/2

  case array[mid_index] <=> target 
  when -1 
    #target > array[mid_index] => upper half search
    rsearch = bsearch(array[mid_index + 1...array.length], target) 
    rsearch.nil? ? nil : mid_index + rsearch + 1
  when 0 
    #target == array[mid_index] => found element
    mid_index 
  when 1 
    #target < array[mid_index] => lower_half search
    bsearch(array[0...mid_index], target)
  end

end
p bsearch([1, 3, 6, 9, 9, 12, 12, 17], 9)
      



def bsearch(arr, target) 
  return nil if arr.empty? 
  return "not found" if !arr.include?(target) 

  l = 0
  r = arr.length - 1
  if r >= l
    mid = l + (r - l) / 2

    # If element is present at the middle itself
    if arr[mid] == target
        return mid
     
    # If element is smaller than mid, then it
    # can only be present in left subarray
    elsif arr[mid] > target
      bsearch(arr[0...mid], target)

    # Else the element can only be present
    # in right subarray
    else
      rsearch = bsearch(arr[mid + 1...arr.length], target) 
      rsearch.nil? ? nil : mid += rsearch + 1
    end
  end 
end  

p bsearch([1, 3, 6, 9, 9, 12, 12, 17], 17) 
 p bsearch([1, 2, 3], 1) # => 0
p bsearch([2, 3, 4, 5], 3) # => 1
p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil
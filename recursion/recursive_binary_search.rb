
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
      

# Problem 1: You have array of integers. Write a recursive solution to find the sum of the integers. 

def sum(array)
  return array[0] if array.length == 1
  return [] if array.empty?
  array[0] + sum(array[1..-1]) 
end 


p sum([1, 3, 5, 9]) 


# Problem 2: You have array of integers. Write a recursive solution to determine whether or not the array contains a specific value. 

def include?(array, target) 
  return false if array.length == 0 
  return true if array.first == target 

  include?(array[1..-1], target) 

end 

p include?([1, 3, 3, 9], 5)
p include?([], 5)
p include?([5], 5)
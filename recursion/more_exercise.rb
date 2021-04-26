# Problem 1: You have array of integers. Write a recursive solution to find the sum of the integers. 

def sum(array)
  return array[0] if array.length == 1
  return [] if array.empty?
  array[0] + sum(array[1..-1]) 
end 


p sum([1, 3, 5, 9]) 
# Write a function sum_to(n) that uses recursion to calculate the sum from 1 to n (inclusive of n). 

def sum_to(n) 
  return n if n == 1 

  n + sum_to(n - 1)
end 

p sum_to(9) 


# Write a function add_numbers(nums_array) that takes in an array of Integers and returns the sum of those numbers. Write this method recursively. 

def add_numbers(nums_array) 

  return nums_array.first if nums_array.length <= 1

  nums_array.pop + add_numbers(nums_array) 

end

p add_numbers([3, 8, 8, 9, 2, 1, 6]) 
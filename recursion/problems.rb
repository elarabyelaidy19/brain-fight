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


# Let's write a method that will solve Gamma Function recursively. The Gamma Function is defined Γ(n) = (n-1)! 

def gamma_fnc(n) 

  return nil if n < 1  
  return 1 if n == 1 

  (n - 1) * gamma_fnc(n - 1)
end 

p  gamma_fnc(0)  # => returns nil
p  gamma_fnc(1)  # => returns 1
p  gamma_fnc(4)  # => returns 6
p  gamma_fnc(8)  # => returns 5040


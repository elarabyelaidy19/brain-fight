# Write a function sum_to(n) that uses recursion to calculate the sum from 1 to n (inclusive of n). 

def sum_to(n) 
  return n if n == 1 

  n + sum_to(n - 1)
end 

p sum_to(9) 



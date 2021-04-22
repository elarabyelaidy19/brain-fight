# Write a recursive method, range, that takes a start and an end and returns an array of all numbers in that range, exclusive.
# For example, range(1, 5) should return [1, 2, 3, 4]. If end < start, you can return an empty array.

def range(min, max) 

  return [] if min >= max  
  range(min, max -1) << max - 1  
end 

p range(1, 5)

# Write both a recursive and iterative version of sum of an array.

def sum(array) 

  sum = 0 

  array.each do |ele| 
    sum += ele  
  end 

  sum 
end 

p sum([1, 3, 6])


def sum_recursive(array) 
  return nil if array.empty?
  return array[0] if array.length == 1

  array[0] + sum_recursive(array[1..-1]) 
end 

p sum_recursive([1, 3, 6]) 

# Write two versions of exponent that use two different recursions: 
# this is math, not Ruby methods.

# recursion 1
# exp(b, 0) = 1
# exp(b, n) = b * exp(b, n - 1)

# recursion 2
# exp(b, 0) = 1
# exp(b, 1) = b
# exp(b, n) = exp(b, n / 2) ** 2             [for even n]
# exp(b, n) = b * (exp(b, (n - 1) / 2) ** 2) [for odd n]# 

def exponent(base, expo) 

  return 1 if expo == 0 

  base * exponent(base, expo - 1) 
end 

p exponent(2, 3) 


def exponent_2(base, expo) 
  
  return 1 if expo == 0 
  return base if expo == 1 

  half = exponent(base, expo / 2) 

  if expo.even? 
    result = half**2  # expo is even 
  else  
    result = base * half**2   # expo is odd 
  end 
end 

p exponent_2(2, 2) 
p exponent_2(2, 3) 







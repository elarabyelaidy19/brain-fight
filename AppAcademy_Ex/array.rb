# Write a method doubler(numbers) that takes an array of numbers and returns a new array
# where every element of the original array is multiplied by 2.  

def doubler(numbers) 
  multiplied = [] 
  i = 0
  while i < numbers.length 
    old_nums = numbers[i]
    new_nums = old_nums*2
    multiplied << new_nums

    i += 1
  end 

  multiplied
end 

 p doubler([1, 2, 3, 4]) 
p doubler([7, 1, 8])   





def doubler(numbers) 

  multiplied = [] 

  (0...numbers.length).each do |i| 
    old_nums = numbers[i]
    new_nums = old_nums*2
    multiplied << new_nums 
  end 

  multiplied
end 

p doubler([1, 2, 3, 4]) # => [2, 4, 6, 8]

p doubler([7, 1, 8])    # 



# Write a method yell(words) that takes in an array of words and returns a
# new array where every word from the original array has an exclamation point after it. 

def yell(words) 

  yelled = [] 

  (0...words.length).each do |ele| 
    yelled <<  words[ele] + '!' 
  end 
  yelled
end 

p yell(["hello", "world"]) 
puts
p yell(["code", "is", "cool"])  


# Write a method element_times_index(nums) that takes in an array of numbers
# and returns a new array containing every number of the original array multiplied with its index. 

def element_times_index(nums) 
  
  new_array = [] 

  (0...nums.length).each do |ele| 
    new_array << nums[ele]*ele  
  end 

  new_array
end 

print element_times_index([4, 7, 6, 5])      
puts
print element_times_index([1, 1, 1, 1, 1, 1]) 
puts


# Write a method even_nums(max) that takes in a number max and returns an array containing all even numbers from 0 to max 

def even_nums(max) 
  even_numbers = [] 

  (0..max).each do |ele| 
    even_numbers << ele if ele % 2 == 0
  end 

  even_numbers
end 

print even_nums(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums(5)  # => [0, 2, 4] 



# Write a method range(min, max) that takes in two numbers min and max. 
# The method should return an array containing all numbers from min to max inclusive. 

def range(min, max) 
  new_array = [] 

  (min..max).each do |ele| 
    new_array << ele
  end 

  new_array
end 
puts 
print range(2, 7)   
puts
print range(13, 20)


# Write a method odd_range(min, max) that takes in two numbers min and max.  
# The method should return an array containing all odd numbers from min to max (inclusive). 

def odd_range(min, max)

  odd_numbers = [] 
  (min..max).each do |ele| 
    odd_numbers << ele if ele % 2 != 0 
  end 
  
  odd_numbers
end 
puts
print odd_range(11, 18) 
puts
print odd_range(3, 7)


# Write a method reverse_range(min, max) that takes in two numbers min and max. 
# The function should return an array containing all numbers from min to max in reverse order. The min and max should be excluded from the array

def reverse_range(min, max) 
  new_array = [] 

  (min+1...max).reverse_each do |ele| 
    new_array << ele 
  end 

  new_array
end 

puts
print reverse_range(10, 17)
puts
print reverse_range(1, 7)


# sol 2

def reverse_range(min, max) 

  new_array = [] 

  i = max - 1 
  while i > min
    new_array << i 

    i -= 1
  end 

  new_array 
end 


puts
print reverse_range(10, 17)
puts
print reverse_range(1, 7)
 
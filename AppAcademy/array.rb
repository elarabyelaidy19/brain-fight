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
 

# Write a method first_half(array) that takes in an array and returns a new array containing the first half of the elements in the array. 
# If there is an odd number of elements, return the first half including the middle element. 

def first_half(array) 

  new_array = [] 

  i = 0 

  while i < (array.length.to_f / 2) 
    new_array << array[i] 
    
    i += 1 
  end 

  new_array
end 

puts
print first_half(["Brian", "Abby", "David", "Ommi"]) 
puts
print first_half(["a", "b", "c", "d", "e"])  

  
# Write a method factors_of(num) that takes in a num and returns an array of all positive numbers less than or equal to num that can divide num. 

def factors_of(num) 
  factors = [] 

  (1..num).each do |ele| 
    factors << ele if num % ele == 0 
  end 
  factors 
end 

puts
print factors_of(3)  
puts
print factors_of(4)   
puts
print factors_of(8)   
puts
print factors_of(9)  
puts
print factors_of(16) 


# Write a method select_odds(numbers) that takes in an array of numbers and returns a new array containing the odd numbers of the original array. 

def select_odds(numbers) 
  new_array = [] 

  (0...numbers.length).each do |ele| 
    new_array << numbers[ele] if numbers[ele] % 2 != 0
  end 

  new_array
end 


puts 
print select_odds([13, 4, 3, 7, 6, 11]) 
puts
print select_odds([2, 4, 6]) 


# sol 2 

def select_odds(numbers) 

  numbers.select { |ele| ele.odd?   }
end 

puts 
print select_odds([13, 4, 3, 7, 6, 11]) 
puts
print select_odds([2, 4, 6, 3]) 


# Write a method select_long_words(words) that takes in an array of words and 
# returns a new array containing all of the words of the original array that are longer than 4 characters.

def select_long_words(words) 
  longest_words = [] 

  (0...words.length).each do |ele| 
    longest_words << words[ele] if words[ele].length > 4
  end 

  longest_words
end 

puts 
puts
print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) 
puts
print select_long_words(["keep", "coding"])          


# sol 2  

def select_long_words(words) 
  words.select { |word| word.length > 4} 
end 

puts 
puts
print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) 
puts
print select_long_words(["keep", "coding"])          


# sol 3 


def select_long_words(words) 
  longest_words = []

  i = 0 
  while i < words.length
    word = words[i]  
    if word.length > 4
      longest_words << word 
    end 

    i += 1
  end 

  longest_words
end 

puts 
puts
print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) 
puts
print select_long_words(["keep", "coding"])          


# Write a method sum_elements(arr1, arr2) that takes in two arrays. The method should 
# return a new array containing the results of adding together corresponding elements of the original arrays. You can assume the arrays have the same length.

def sum_elements(arr1,arr2) 
  
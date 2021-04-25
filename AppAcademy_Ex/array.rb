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
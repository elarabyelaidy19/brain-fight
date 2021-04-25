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

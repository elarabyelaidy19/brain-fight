# Write a method is_div_by_5(number) 
# that takes in a number and returns the boolean true if the given number is divisible by 5, false otherwise

def is_div_by_5?(number) 

  return true if number % 5 == 0 

  false 
end 

p is_div_by_5?(25) 
p is_div_by_5?(23) 

# Write a method either_only(number) that takes in a number and returns true if the number is divisible by either 3 or 5, but not both. The method should return false otherwise.

def either_only?(number)  
  
  if number % 5 == 0 && number % 3 != 0 
    return true  
  end 
  
  if number % 5 != 0 && number % 3 == 0 
    return true  
  end 

  false 
end 

p either_only?(15) 
p either_only?(10) 
p either_only?(9) 
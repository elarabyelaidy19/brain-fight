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


# Write a method larger_number(num1, num2) that takes in two numbers and returns the larger of the two numbers.  

def larger_number(num1, num2) 

  num1 > num2 ? num1 : num2 
end 

p larger_number(122, 16)  
p larger_number(12, 14) 


# Write a method longer_string(str1, str2) 
# that takes in two strings and returns the longer of the two strings. In the case of a tie, the method should return the first string. 

def longer_string(str1, str2) 
  
  str1.length >= str2.length ? str1 : str2   
end 

puts longer_string("app", "academy") 
puts longer_string("summer", "fall") 


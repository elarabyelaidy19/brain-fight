# Write a method is_div_by_5(number) 
# that takes in a number and returns the boolean true if the given number is divisible by 5, false otherwise

def is_div_by_5?(number) 

  return true if number % 5 == 0 

  false 
end 

p is_div_by_5?(25) 
p is_div_by_5?(23)
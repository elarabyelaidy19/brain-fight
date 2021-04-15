# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.
sum = 0
i = 3 
while i < 1000 
  sum += i if i % 3 == 0 || i % 5 == 0
  i += 1
end 

p sum 


#second approach 

sum = 0 
(3...1000).each { |i| sum += i if (i % 3 == 0 || i % 5 == 0) } 
p sum

# third approach  

def sum_div_by_3_5(num) 

  numbers = [] 
  
  (3...num).each do |i| 
    numbers << i if (i % 3 == 0 || i % 5 == 0) 
  end

  numbers.sum 
end 

p sum_div_by_3_5(1000) 



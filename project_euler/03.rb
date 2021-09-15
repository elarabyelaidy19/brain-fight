# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

def prime?(num) 
  (2...num).each do |i|
    if num % i == 0 
      return false
    end 
  end 
  return true  
end 

def factor?(curr_num, num) 
  if num % curr_num == 0  
    return true
  else 
    return false  
  end 
end 

def get_first_prime_factor(num) 
  (2...num).each do |curr_num| 
     if factor?(curr_num, num) && prime?(curr_num)
      return curr_num
     end
  end 
end 

num = 600851475143 
prime_factors = [] 
n = num 
until prime?(n) 
  prime_factor = get_first_prime_factor(n) 
  prime_factors << prime_factor
  n = n / prime_factor
end 

prime_factors << n 
p prime_factors.max



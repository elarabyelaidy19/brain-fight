# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

def prime?(num) 
  (2...num).each do |i|
    return false if num % i == 0
  end 
  return true 
end 
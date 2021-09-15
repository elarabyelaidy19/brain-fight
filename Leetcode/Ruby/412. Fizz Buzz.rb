 # https://leetcode.com/problems/fizz-buzz/ 


 # @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
  res = []
    return res if n < 1 
    (1..n).each do |i|  
    if i % 15 == 0  
        res << "FizzBuzz"
    elsif i % 3 == 0 
        res << "Fizz" 
    elsif i % 5 == 0 
        res << "Buzz"  
    else 
        res << i.to_s
    end 
    end 
    res
end
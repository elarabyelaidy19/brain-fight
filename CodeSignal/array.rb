# https://app.codesignal.com/arcade/intro/level-4/xvkRbxYkdHdHNCKjg 
=begin 
You are given an array of integers. On each move you are allowed to increase 
exactly one of its element by one. Find the minimal number of moves required 
to obtain a strictly increasing sequence from the input.

Example

For inputArray = [1, 1, 1], the output should be
arrayChange(inputArray) = 3. 
=end 

def array_change(array) 
  result = 0 

  array.each_with_index do |ele, idx| 
    prev = array[idx-1] 
    next if idx == 0 || ele > prev 
    moves = prev - ele + 1 
    result += moves 
    array[idx] = ele + moves 
  end 
  result
end  


# Two 

def arrayChange(array)
  max = -10**1000
  ans = 0 
  
   for i in (0..array.length - 1) 
       max = [array[i], max+1].max 
       ans += max - array[i]  
       p max 
   end
   ans
end


# https://app.codesignal.com/arcade/intro/level-4/xvkRbxYkdHdHNCKjg 
=begin 
You are given an array of integers. On each move you are allowed to increase 
exactly one of its element by one. Find the minimal number of moves required 
to obtain a strictly increasing sequence from the input.

Example

For inputArray = [1, 1, 1], the output should be
arrayChange(inputArray) = 3. 

[1, 2 (+1), 3 (+2) ] 1+2 == 3
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




#####################################################################
#####################################################################
=begin 
# https://app.codesignal.com/arcade/intro/level-4/xYXfzQmnhBvEKJwXP  
Two arrays are called similar if one can be obtained from another by swapping at 
most one pair of elements in one of the arrays.

Given two arrays a and b, check whether they are similar.
=end
def are_similar(a, b) 
  indexs = [] 

  a.each_with_index { |ele, i| indexs.push(i) if ele != b[i] } 

  return false if indexs.length > 2 

  a.sort == b.sort 
end 

def is_similar(a,b) 

  sum, s1, s2 = 0, 1, 1 

  for i in (0..a.length - 1) 
    if (a[i] != b[i]) 
      sum += 1 
    end 
    s1 *= a[i] # 
    s2 *= b[i] 
  end 

  return sum < 2 && s1 == s2

end 

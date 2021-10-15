=begin
Given a sorted array of integers a, your task is to determine which element of a is closest to all other values of a.
In other words, find the element x in a, which minimizes the following sum:

abs(a[0] - x) + abs(a[1] - x) + ... + abs(a[a.length - 1] - x)
(where abs denotes the absolute value)

If there are several possible answers, output the smallest one.

Example

For a = [2, 4, 7], the output should be absoluteValuesSumMinimization(a) = 4.

for x = 2, the value will be abs(2 - 2) + abs(4 - 2) + abs(7 - 2) = 7.
for x = 4, the value will be abs(2 - 4) + abs(4 - 4) + abs(7 - 4) = 5.
for x = 7, the value will be abs(2 - 7) + abs(4 - 7) + abs(7 - 7) = 8.
The lowest possible value is when x = 4, so the answer is 4.
=end

def absoluteValuesSumMinimization(a) 
  min = 100**100 
  idx = -1 

  for i in (0..a.length - 1) 
    max = 0 
    for j in (0..a.length - 1) 
      max += (a[j] - a[i]).abs 
    end 

    if min > max 
      idx = a[i] 
      min = max 
    end 
  end 
  idx 
end 

# two 

def absoluteValuesSumMinimization(a) 
  min_diff = 100**100 
  x = 0 
    
  for i in (0..a.length - 1) 
       sum_diff =  a.map { |d| (d - a[i]).abs }.sum 
       p sum_diff
       if sum_diff < min_diff 
           x = a[i]
           min_diff = sum_diff 
       end 
   end 
   x 
end 


# Three 

def absoluteValuesSumMinimization(a) 
  return a[(a.length - 1) / 2] 
end 
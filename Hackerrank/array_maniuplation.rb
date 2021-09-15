# https://www.hackerrank.com/challenges/crush/problem

def get_max(arr) 
  len = arr.length - 1 
  max = sum = 0 
  for i in (0..len) 
      sum += arr[i] 
      max = [sum, max].max  
  end 
  return max 
end 
   


def arrayManipulation(n, queries)
  # Write your code here 
  arr = [0] * (n+2)
  queries.each do |query|
      a, b, k = query[0], query[1], query[2]
      arr[a] += k
      arr[b+1] -= k
  end 
  get_max(arr)
end
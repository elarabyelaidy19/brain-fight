https://www.hackerrank.com/challenges/compare-the-triplets/problem

#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'compareTriplets' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER_ARRAY a
#  2. INTEGER_ARRAY b
#
def solve(a0, a1, a2, b0, b1, b2)
  
  aliceScores = [a0, a1, a2]
  bobScores = [b0, b1, b2]

  
  aliceresult = 0 
  bobresult = 0

  
  aliceScores.each_with_index do |aliceScore, i|
    if aliceScore > bobScores[i]
      aliceresult += 1 
    elsif aliceScore < bobScores[i]
      bobresult += 1
    end
  end 

  return aliceresult, bobresult
end 

def compareTriplets(a, b)
    # Write your code here
  result = [0, 0]
  counter_a = 0
  counter_b = 0

  a.each_with_index do |_element, index|
    if a[index] > b[index]
      result[0] = counter_a += 1
    elsif a[index] < b[index]
      result[1] = counter_b += 1
    elsif a[index] == b[index]
      next
    end
  end
  result 
end
                
                
    

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

a = gets.rstrip.split.map(&:to_i)

b = gets.rstrip.split.map(&:to_i)

result = compareTriplets a, b

fptr.write result.join " "
fptr.write "\n"

fptr.close()

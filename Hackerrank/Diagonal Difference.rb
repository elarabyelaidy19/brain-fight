https://www.hackerrank.com/challenges/diagonal-difference/problem 

#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'diagonalDifference' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

def diagonalDifference(arr)
    # Write your code here
    size = arr.size 
    left_diagonal = 0 
    right_diagonal = 0 
    
    (0..size - 1).each do |i| 
        left_diagonal += arr[i][i] 
        right_diagonal += arr[i][size-i-1] 
    end 
    (left_diagonal - right_diagonal).abs 
end 
    

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

arr = Array.new(n)

n.times do |i|
    arr[i] = gets.rstrip.split.map(&:to_i)
end

result = diagonalDifference arr

fptr.write result
fptr.write "\n"

fptr.close()

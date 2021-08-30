# https://www.hackerrank.com/challenges/2d-array/problem

#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'hourglassSum' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

def hourglassSum(arr)
    # Write your code here 
     max = -63
     # max_hourglass_sum = arr[0][0] + arr[0][1] + arr[0][2] + arr [1][1] + arr[2][0] + arr[2][1] + arr[2][2]
    for r in (0..3)
        for c in (0..3)
            current_hourglass_sum = 0
            current_hourglass_sum = arr[r][c] + arr[r][c + 1] + arr[r][c + 2] + arr [r + 1][c + 1] + arr[r + 2][c] + arr[r + 2][c + 1] + arr[r + 2][c + 2]
            if current_hourglass_sum > max
                max = current_hourglass_sum 
            end      
        end 
    end      
    return max
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

arr = Array.new(6)

6.times do |i|
    arr[i] = gets.rstrip.split.map(&:to_i)
end

result = hourglassSum arr

fptr.write result
fptr.write "\n"

fptr.close()

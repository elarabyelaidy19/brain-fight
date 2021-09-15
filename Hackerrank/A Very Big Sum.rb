#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'aVeryBigSum' function below.

https://www.hackerrank.com/challenges/a-very-big-sum/problem

def aVeryBigSum(ar)
    # Write your code here
    sum = 0
    (0..ar.length - 1).each do |i| 
        sum += ar[i]
    end 
    sum 
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

ar_count = gets.strip.to_i

ar = gets.rstrip.split.map(&:to_i)

result = aVeryBigSum ar

fptr.write result
fptr.write "\n"

fptr.close()

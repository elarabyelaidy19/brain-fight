https://www.hackerrank.com/challenges/plus-minus/problem

#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.

def plusMinus(arr)
    # Write your code here
    positive = 0 
    negative = 0 
    zeros    = 0 
    
    arr.each do |i| 
        if i > 0 
            positive += 1
        elsif i < 0 
            negative += 1 
        else 
            zeros += 1  
        end 
    end 
    
    puts (positive.to_f / arr.size).round(6)
    puts (negative.to_f / arr.size).round(6)
    puts (zeros.to_f     / arr.size).round(6)     

end



n = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

plusMinus arr

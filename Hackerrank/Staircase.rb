https://www.hackerrank.com/challenges/staircase/problem 


#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'staircase' function below.
#
# The function accepts INTEGER n as parameter.
#

def staircase(n)
    # Write your code here
    i = 1
    while i <= n 
        spacecount = n - i 
        hashcount = i 
        puts " " * spacecount + "#" * hashcount
        i += 1 
    end 

end

n = gets.strip.to_i

staircase n

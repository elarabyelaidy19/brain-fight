https://www.hackerrank.com/challenges/time-conversion/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen 


#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'timeConversion' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#

def timeConversion(s)
    # Write your code here 
     case s[8,2]
    when "PM"
        if s[0,2] == '12'
            return s[0,8]
        else
            hour = s[0,2].to_i
            hour += 12
            return hour.to_s + s[2,6]
        end
    else
        if s[0,2] == '12'
            return '00' + s[2,6]
        else
            return s[0,8]
        end
    end        
    

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.chomp

result = timeConversion s

fptr.write result
fptr.write "\n"

fptr.close()

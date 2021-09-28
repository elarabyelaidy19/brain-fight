=begin Given array of integers, remove each kth element from it.

Example

For inputArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] and k = 3, the output should be
extractEachKth(inputArray, k) = [1, 2, 4, 5, 7, 8, 10].

Input/Output

[execution time limit] 4 seconds (rb)

[input] array.integer inputArray

Guaranteed constraints:
5 ≤ inputArray.length ≤ 15,
-20 ≤ inputArray[i] ≤ 20.

[input] integer k

Guaranteed constraints:
1 ≤ k ≤ 10.

[output] array.integer

inputArray without elements k - 1, 2k - 1, 3k - 1 etc. 
=end 


# One 

def extractEachKth(array, k) 
  result = [] 
  count = 0 

  array.each do |x| 
    count += 1 

    if count != k 
      result << x 
    else 
      count = 0 
    end 
  end 
  result 
end 


# Two 

def extractEachKth(array, k) 
  array.select.with_index { |x, i| (i + 1) % k != 0 } 
end 


#######################################################################
#######################################################################

=begin 
Find the leftmost digit that occurs in a given string.

Example

For inputString = "var_1__Int", the output should be
firstDigit(inputString) = '1';
For inputString = "q2q-q", the output should be
firstDigit(inputString) = '2';
For inputString = "0ss", the output should be
firstDigit(inputString) = '0'.
=end

def firstDigit(string) 
  /[0-9]/.match(string)
  string.match(/\d/)
end


#######################################################################
#######################################################################

=begin 
Given a string, find the number of different characters in it.

Example

For s = "cabca", the output should be
differentSymbolsNaive(s) = 3.

There are 3 different characters a, b and c.
=end 
require 'set'
def differentSymbolsNaive(s) 
  set = Set.new 

  s.each_char do |c| 
    set.add(c) 
  end 
  set.lenght 
end 

# Second  

def differentSymbolsNaive(s) 
 
end 




#######################################################################
#######################################################################




#######################################################################
#######################################################################




#######################################################################
#######################################################################




#######################################################################
#######################################################################




#######################################################################
#######################################################################




#######################################################################
#######################################################################




#######################################################################
#######################################################################




#######################################################################
#######################################################################




#######################################################################
#######################################################################




#######################################################################
#######################################################################




#######################################################################
#######################################################################




#######################################################################
#######################################################################




#######################################################################
#######################################################################




#######################################################################
#######################################################################




#######################################################################
#######################################################################




#######################################################################
#######################################################################




#######################################################################
#######################################################################




#######################################################################
#######################################################################




#######################################################################
#######################################################################




#######################################################################
#######################################################################




#######################################################################
#######################################################################




#######################################################################
#######################################################################




#######################################################################
#######################################################################




#######################################################################
#######################################################################




#######################################################################
#######################################################################




#######################################################################
#######################################################################




#######################################################################
#######################################################################




#######################################################################
#######################################################################




#######################################################################
#######################################################################



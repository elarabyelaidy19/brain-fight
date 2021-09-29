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
  /[0-9]/.match(string) # 1
  string.match(/\d/)  # 2 
  string.scan(/\d/)[0]  # 3
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
  chars = [] 
  s.chars.map { |c| chars << c if chars.include?(c) == false } 
  chars.length 
end 

# Third 

def differentSymbolsNaive(s) 
  s.chars.uniq.size 
end 




#######################################################################
#######################################################################
=begin 
Given array of integers, find the maximal possible sum of some of its k consecutive elements.

Example

For inputArray = [2, 3, 5, 1, 6] and k = 2, the output should be
arrayMaxConsecutiveSum(inputArray, k) = 8.
All possible sums of 2 consecutive elements are:

2 + 3 = 5;
3 + 5 = 8;
5 + 1 = 6;
1 + 6 = 7.
Thus, the answer is 8.
=end 

def arrayMaxConsecutiveSum(array, k)
  sum = array[0...k].sum 
  max = sum 
  l = array.length
  (k...l).each do |i| 
    # drop k - i and sum i 
    # 1, 2, 3, 4 ...... k 
    # 2, 3, 4 ....... k , k + 1 
    #.....  SLIDING WINDOW
      sum = sum - array[i - k] + array[i] 
      max = [sum, max].max  
  end 
  max      
end


def arrayMaxConsecutiveSum(a, k) 
  s = [0] 
  # [0]
  l = a.size 

  for i in 0...l 
    s[i+1] = s[i] + a[i] 
    # [0, 2, 5, 10, 11, 17] 
  end 

  (0..l-k).map { |i| s[i+k] - s[i] }.max 
  # [5-0, 10-2, 11-5, 17-10] => [5, 8, 6, 7]  
end 

#######################################################################
#######################################################################
=begin 
Caring for a plant can be hard work, but since you tend to it regularly, you have a plant that grows consistently. Each day, its height increases by a fixed amount represented by the integer upSpeed. But due to lack of sunlight, the plant decreases in height every night, by an amount represented by downSpeed.

Since you grew the plant from a seed, it started at height 0 initially. Given an integer desiredHeight, your task is to find how many days it'll take for the plant to reach this height.

Example

For upSpeed = 100, downSpeed = 10, and desiredHeight = 910, the output should be
growingPlant(upSpeed, downSpeed, desiredHeight) = 10.

=end 

# one 
def growingPlant(up, down, desiredHeight) 
  days = 1 
  decrease = up 

  while desiredHeight > decrease 
    decrease += (up - down) 
    days += 1 
  end 
  days 
end 

def growingPlant(up, down, desiredHeight) 
  days = 0 
  decrease = 0 

  while desiredHeight > decrease 
    decrease += up     
    days += 1 
    return days if decrease >= desiredHeight 
    decrease -= down
  end 
  days 
end 


def growingPlant(up, down, desiredHeight) 
  return 1 if up > desiredHeight 
  ((desiredHeight - down).fdiv(up - down)).ceil 
  # fdiv return floating point div 
  # ceil return approxaimate value  
end

#######################################################################
#######################################################################
=begin 
You found two items in a treasure chest! The first item weighs weight1 and is worth value1, and the second item weighs weight2 and is worth value2. What is the total maximum value of the items you can take with you, assuming that your max weight capacity is maxW and you can't come back for the items later?

Note that there are only two items and you can't bring more than one item of each type, i.e. you can't take two first items or two second items.

Example

For value1 = 10, weight1 = 5, value2 = 6, weight2 = 4, and maxW = 8, the output should be
knapsackLight(value1, weight1, value2, weight2, maxW) = 10.

You can only carry the first item.

For value1 = 10, weight1 = 5, value2 = 6, weight2 = 4, and maxW = 9, the output should be
knapsackLight(value1, weight1, value2, weight2, maxW) = 16.

You're strong enough to take both of the items with you.

For value1 = 5, weight1 = 3, value2 = 7, weight2 = 4, and maxW = 6, the output should be
knapsackLight(value1, weight1, value2, weight2, maxW) = 7.

You can't take both items, but you can take any of them.
=end

def knapsackLight(value1, weight1, value2, weight2, maxW)
  return (value1 + value2) if maxW >= (weight1 + weight2) 
  return 0 if maxW < weight1 && maxW < weight2 
  return [value1, value2].max if weight1 <= maxW && weight2 <= maxW
  return value1 if weight2 > maxW && weight1 <= maxW 
  return value2 if weight1 > maxW && weight2 <= maxW 
end

def knapsackLight(value1, weight1, value2, weight2, maxW)
  max_value = 0 
  return value1 + value2 if (weight1 + weight2) <= maxW
  
  if value1 > value2 || weight2 > maxW  
    max_value = value1 if maxW >= weight1 
  else 
    max_value = value2 if maxW >= weight2 
  end 
  max_value
end 

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



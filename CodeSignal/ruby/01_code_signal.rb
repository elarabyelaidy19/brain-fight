


#####################################################################
#####################################################################

# https://app.codesignal.com/arcade/intro/level-6/6cmcmszJQr6GQzRwW 

def evenDigitsOnly(n)
  p nums = n.to_s.split("") 
  
  for i in (0..nums.length - 1) 
      return false if nums[i].to_i % 2 != 0 
  end
  true 
end




def evenDigitsOnly2(n)
  while (n > 0) 
    return false if n % 2 == 1 
    n /= 10 
  end 
  true 
end 



def evenDigitsOnly(n) 
  n.to_s.chars.all? { |el| el.to_i.even? } 
end 


#####################################################################
#####################################################################


def isIPv4Address(string)
  
  return false if string.count('.') != 3
  arr = string.split('.')   
  return false if arr.length < 4 || arr.include?("")  
  
    for i in (0..arr.length - 1) 
      return false if (arr[i].to_i > 255 || arr[i].to_i <= 0)  
      return false if arr[i].count("a-zA-Z") > 0 
    end  
  true 
end

# second 

def isIPv4Address(string)  
  return false if string.count(".") != 3 
  string.split('.').each { |x| return false if x.to_i.to_s != x || x.to_i > 255 } 
  true 
end 

#####################################################################
#####################################################################

# https://app.codesignal.com/arcade/intro/level-3/3AdBC97QNuhF6RwsQ 

def isLucky(n)
  arr = n.to_s.split('').map(&:to_i)
  len = arr.size - 1 
  mid  = len / 2
  l = 0 
  r = 0
  
  for i in (0..len) 
      if i <= mid 
          l += arr[i].to_i 
      else 
          r += arr[i].to_i 
      end  
  end  
  
  if l == r 
      return true 
  else 
      return false 
  end 
end


# second approach 

def is isLucky(n) 
  arr = n.to_s.split('').map(&:to_i) 
  len = arr.lenght - 1 
  mid = len / 2 
  sum = 0

  (0..mid).each do |i| 
    sum += (arr[i] - arr[len-i]) 
  end 

  sum == 0
end 

#####################################################################
#####################################################################

# https://app.codesignal.com/arcade/intro/level-2/bq2XnSr5kbHqpHGJC 

def makeArrayConsecutive2(statues)
  length = statues.length - 1 
  smallest = statues.min 
  biggest = statues.max 
  
  actualLength = (biggest - smallest) 
  
  if actualLength == length 
      return 0 
  else 
      actualLength - length 
  end  
  
end





#####################################################################
#####################################################################

# https://app.codesignal.com/arcade/intro/level-2/xskq4ZxLyqQMCLshr 

def matrixElementsSum(matrix)
  result = 0
  for i in (0..(matrix[0].size-1))
      for j in (0..(matrix.size-1))
          current = matrix[j][i]
          break if  current == 0
          result += current
      end 
  end
  result
end


#####################################################################
#####################################################################

# https://app.codesignal.com/arcade/intro/level-5/EEJxjQ7oo7C5wAGjE

# Given an array of integers, find the maximal absolute difference between any two of its adjacent elements.

## Example
# For inputArray = [2, 4, 1, 0], the output should be
# arrayMaximalAdjacentDifference(inputArray) = 3.# 

def arrayMaximalAdjacentDifference(array) 
  array.each_cons(2).map { |a, b| (a - b).abs }.max 
end  

# second 

def arrayMaximalAdjacentDifference(array) 
  max = 0 

  for i in (1...array.length) 
    diff = array[i] - array[i-1] 
    diff = diff.abs 
    max = diff if diff > max 
  end 
  max  
end 

#####################################################################
#####################################################################

# https://app.codesignal.com/arcade/intro/level-5/ZMR5n7vJbexnLrgaM 

def mines_weeper(matrix) 
  result = Array.new(matrix.length) { Array.new(matrix[0].length, 0) } 

  matrix.each_with_index do |row, r| 
    row.each_with_index do |col, c| 
      if col then
        (r-1..r+1).each do |r2| 
          next if r2 < 0 || r2 > matrix.length - 1 
          (c-1..c+1).each do |c2| 
            next if c2 < 0 || c2 > row.length -1 
            result[r2][c2] += 1 if !(r2 == r && c2 == c) 
          end 
        end 
      end 
    end 
  end 
  result 
end 



#####################################################################
#####################################################################

# https://app.codesignal.com/arcade/intro/level-4/Xfeo7r9SBSpo3Wico 
require 'set' 
def plindrome_rearranging(string) 
  set = Set.new 

  string.each_char do |ch| 
    char = string[ch] 
    if set.include?(char) 
      set.delete(char) 
    else  
      set.add(char) 
    end 
  end 

  set.length <= 1 ? true : false 
end 

#####################################################################
#####################################################################

# https://app.codesignal.com/arcade/intro/level-3/9DgaPsE2a7M6M2Hu6 

def reverse_parenthes(str) 
  return str if !str.include?("(") 
  pairs = str.count("(") 
  left = 0

  str.chars.each_with_index do |char, idx| 
    if char == "(" 
      pairs -= 1 
      p pairs
      if pairs == 0 
        left = idx 
        p left
      end 
    end
  end 

  right1 = str[left..-1].index(")")
  p right1
  right = right1 + left 
  p right
  str[left..right] = str[(left + 1)..(right - 1)].reverse

  reverse_parenthes(str)

end 

#####################################################################
#####################################################################

# https://app.codesignal.com/arcade/intro/level-2/yuGuHvcCaFCKk56rJ 

def shapeArea(n) 
  area = (n*n) + ( (n-1) * (n-1) ) 
end 

#####################################################################
#####################################################################

# https://app.codesignal.com/arcade/intro/level-3/D6qmdBL2NYz49XHwM  

def sort_by_height(arr) 
  len = arr.lenght - 1 
  for i in (0..len) 
    if arr[i] > -1 
      for j in (0..len) 
        if (arr[j] > -1 && arr[j] > arr[i]) 
          arr[j], arr[i] = arr[i], arr[j] 
        end 
      end 
    end 
  end 

  arr 
end 

#####################################################################
#####################################################################

=begin
Correct variable names consist only of English letters, digits and underscores and they can't start with a digit.
Check if the given string is a correct variable name.

Example
For name = "var_1__Int", the output should be
variableName(name) = true;
For name = "qq-q", the output should be
variableName(name) = false;
For name = "2w2", the output should be
variableName(name) = false.
=end


def variable_name(name) 
  return false if /\d/.match(name[0]) 

  name.each_char do |c| 
    return false unless /[a-zA-Z]/.match(c) || /\d/.match(c) || c == "_" 
  end 
  true 
end 

#####################################################################
#####################################################################

# https://app.codesignal.com/arcade/intro/level-4/ZCD7NQnED724bJtjN  

def add_border(picture) 
  longest_len = picture.max_by(&:length).length + 2 
  stars = "*" * longest_len 
  rect = [] 
  new_string = "" 
  rect.push(stars) 
  len = picture.length - 1 
  for i in (0..len) 
    new_string = "*" + picture[i] + "*" 
    rect.push(new_string) 
  end 

  rect.push(stars)  
  rect 
end 
####################################################################################################
####################################################################################################

=begin
Given a sorted array of integers a, your task is to determine which element of a is closest to all other values of a.
In other words, find the element x in a, which minimizes the following sum:

abs(a[0] - x) + abs(a[1] - x) + ... + abs(a[a.length - 1] - x)
(where abs denotes the absolute value)

If there are several possible answers, output the smallest one.

Example

For a = [2, 4, 7], the output should be absoluteValuesSumMinimization(a) = 4.

for x = 2, the value will be abs(2 - 2) + abs(4 - 2) + abs(7 - 2) = 7.
for x = 4, the value will be abs(2 - 4) + abs(4 - 4) + abs(7 - 4) = 5.
for x = 7, the value will be abs(2 - 7) + abs(4 - 7) + abs(7 - 7) = 8.
The lowest possible value is when x = 4, so the answer is 4.
=end

def absoluteValuesSumMinimization(a) 
  min = 100**100 
  idx = -1 

  for i in (0..a.length - 1) 
    max = 0 
    for j in (0..a.length - 1) 
      max += (a[j] - a[i]).abs 
    end 

    if min > max 
      idx = a[i] 
      min = max 
    end 
  end 
  idx 
end 

# two 

def absoluteValuesSumMinimization(a) 
  min_diff = 100**100 
  x = 0 
    
  for i in (0..a.length - 1) 
       sum_diff =  a.map { |d| (d - a[i]).abs }.sum 
       p sum_diff
       if sum_diff < min_diff 
           x = a[i]
           min_diff = sum_diff 
       end 
   end 
   x 
end 


# Three 

def absoluteValuesSumMinimization(a) 
  return a[(a.length - 1) / 2] 
end 

########################################################
########################################################

=begin Given an array of equal-length strings, you'd like to know if it's possible to rearrange the order of the elements in such a way that each consecutive pair of strings differ by exactly one character. Return true if it's possible, and false if not.

Note: You're only rearranging the order of the strings, not the order of the letters within the strings!

Example

For inputArray = ["aba", "bbb", "bab"], the output should be
stringsRearrangement(inputArray) = false.

There are 6 possible arrangements for these strings:

["aba", "bbb", "bab"]
["aba", "bab", "bbb"]
["bbb", "aba", "bab"]
["bbb", "bab", "aba"]
["bab", "bbb", "aba"]
["bab", "aba", "bbb"]
None of these satisfy the condition of consecutive strings differing by 1 character, so the answer is false.

For inputArray = ["ab", "bb", "aa"], the output should be
stringsRearrangement(inputArray) = true.

It's possible to arrange these strings in a way that each consecutive pair of strings differ by 1 character (eg: "aa", "ab", "bb" or "bb", "ab", "aa"), so return true.
=end

def stringsRearrangement(inputArray)
  arr = inputArray.map(&:chars) 
  arr = arr.permutation.to_a 
  
  arr.each do |a| 
      return true if a.each_cons(2).all? { |x| diffrence(x[0], x[1]) == 1 }
  end
  false 
end 

def diffrence(s1, s2) 
  count = 0
  
  s1.each_with_index do |c, i| 
      count += 1 if c != s2[i] 
  end 
  count 
end 
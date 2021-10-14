# https://app.codesignal.com/arcade/intro/level-4/xvkRbxYkdHdHNCKjg 
=begin 
You are given an array of integers. On each move you are allowed to increase 
exactly one of its element by one. Find the minimal number of moves required 
to obtain a strictly increasing sequence from the input.

Example

For inputArray = [1, 1, 1], the output should be
arrayChange(inputArray) = 3. 
=end 

def array_change(array) 
  result = 0

  array.each_with_index do |ele, idx| 
    prev = array[idx - 1] 
    next if idx == 0 || prev < ele 
    moves = ele - prev + 1 
    result += moves 
    array[idx] = moves + ele
  end 

  result
end 

#####################################################################
#####################################################################

# https://app.codesignal.com/arcade/intro/level-4/xYXfzQmnhBvEKJwXP 

def are_similar(a, b) 
  indexs = [] 

  a.each_with_index { |ele, i| indexs.push(i) if ele != b[i] } 

  return false if indexs.length > 2 

  a.sort == b.sort 
end 


#####################################################################
#####################################################################


# https://app.codesignal.com/arcade/intro/level-2/xzKiBHjhoinnpdh6m 

def adjacentElementProduct(array) 
  max = array[0] * array[1] 
  last = array.length - 1 
  i = 0 

  while last > i  
    if (array[i] * array[i+1]) > max 
      max = (array[i] * array[i+1])  
    end
    i += 1 
  end

  return max  
end 

# another approach  

def adjacentElementProduct(array) 
  array.each_cons(2).map { |a, b| a * b }.max 
end 


#####################################################################
#####################################################################

# https://app.codesignal.com/arcade/intro/level-3/fzsCQGYbxaEcTr2bL/solutions?solutionId=xBd7NyiZJ4pH2kvc5 

def all_longest_strings(arr) 
  sorted_by_length = arr.map(&:length).max 
  longest = []
  arr.each do |str| 
    if str.length == sorted_by_length 
      longest << str
    end 
  end 

  longest 
end 

#####################################################################
#####################################################################

# https://app.codesignal.com/arcade/intro/level-2/2mxbGwLzvkTCKAJMG

def almostIncreasingSequence(sequence) 
  counter = 0
  biggest_value = -10 ** 5 
  second_biggest_value = biggest_value
  
  sequence.each do |seq|
    if seq > biggest_value 
      second_biggest_value = biggest_value 
      biggest_value = seq 
  
    elsif seq > second_biggest_value 
      biggest_value = seq
      counter += 1
  
    else
      counter += 1
  
    end
  end
  counter <= 1 ? true : false
  
end 


#  another sol 

def almostIncreasingSequence(sequence) 
  return false if sequence.each_cons(2).count { |a, b| a >= b } > 1 
  return false if sequence.each_cons(3).count { |a, b, c| (a >= b && a >= c) || (a >= b && b >= c) || (a >= c && b >= c) } > 1 
  return true 
end  

#####################################################################
#####################################################################

=begin
Given a string, your task is to replace each of its characters by the next one in the English alphabet; i.e. replace a with b, replace b with c, etc (z would be replaced by a).
Example
For inputString = "crazy", the output should be alphabeticShift(inputString) = "dsbaz".
=end

def alphabeticShift(inputString)
  alpha = ("a".."z").to_a
  new_str = "" 
  
  inputString.each_char do |c| 
      new_str << "a" if c == "z"  
      new_str << alpha[alpha.index(c) +1] if alpha[alpha.index(c)] == c && c != "z"
  end  
  new_str
end


#####################################################################
#####################################################################

# https://app.codesignal.com/arcade/intro/level-4/cC5QuL9fqvZjXJsW9 

def alternating_sum(array) 
  team_one = 0 
  team_two = 0 
  new_array = [] 

  array.each_with_index do |idx| 
    team_one += array[idx] if idx.even? 
    team_two += array[idx] if idx.odd? 
  end 

  new_array << team_one << team_two 
end 


#####################################################################
#####################################################################

# https://app.codesignal.com/arcade/intro/level-4/xYXfzQmnhBvEKJwXP 

def are_similar(a, b) 
  indexs = [] 

  a.each_with_index { |ele, i| indexs.push(i) if ele != b[i] } 

  return false if indexs.length > 2 

  a.sort == b.sort 
end 

#####################################################################
#####################################################################

# https://app.codesignal.com/arcade/intro/level-5/g6dc9KJyxmFjB98dL 

def are_equally_strong(yourLeft, yourRight, friendsLeft, friendsRight)
  return (yourLeft + yourRight) == (friendsLeft + friendsRight) && 
  (yourLeft == friendsLeft || yourRight == friendsLeft || yourRight == friendsRight)   
end 

# another approach 


def are_equally_strong(yourLeft, yourRight, friendsLeft, friendsRight)
  me = [yourLeft, yourRight] 
  my_friend = [friendsLeft, friendsRight] 
     
  me.max == my_friend.max && me.min == my_friend.min
end 

# again  

def are_equally_strong(yourLeft, yourRight, friendsLeft, friendsRight) 
  me = [yourLeft, yourRight] 
  my_friend = [friendsLeft, friendsRight] 

  me.sort == my_friend.sort 
end 



#####################################################################
#####################################################################
# https://app.codesignal.com/arcade/intro/level-6/mCkmbxdMsMTjBc3Bm

def arrayReplace(array, elemToReplace, substitutionElem)
  for el in (0...array.length) 
      array[el] = substitutionElem if array[el] == elemToReplace 
  end 
  array 
end


# second  

def arrayReplace(array, elemToReplace, substitutionElem)
  array.map { |x| x == elemToReplace ? substitutionElem : x } 
end
#####################################################################
#####################################################################
# https://app.codesignal.com/arcade/intro/level-5/XC9Q2DhRRKQrfLhb5 
# You are given an array of integers representing coordinates of obstacles situated on a straight line.
# Assume that you are jumping from the point with coordinate 0 to the right. You are allowed only to 
# make jumps of the same length represented by some integer.
# Find the minimal length of the jump enough to avoid all the obstacles.
# Example
# For inputArray = [5, 3, 6, 7, 9], the output should be
# avoidObstacles(inputArray) = 4.
# Check out the image below for better understanding:


def avoid_obstacles(array) 
  i = 0 
  jump = 1 

  while array.length  > i  
    if array[i] % jump == 0 
      i = 0 
      jump += 1 
    else 
      i += 1 
    end 
  end 
  jump
end 

#####################################################################
#####################################################################

# https://app.codesignal.com/arcade/intro/level-5/5xPitc3yT3dqS7XkP

def box_blur(image)
  x = image[0].length - 2
  y = image.length - 2
  result = Array.new(y)
  
  for i in 0...y
      result[i] = Array.new(x)
      for j in 0...x
          result[i][j] = image[i][j] + image[i][j+1] + image[i][j+2] +
                    image[i+1][j] + image[i+1][j+1] + image[i+1][j+2] +
                    image[i+2][j] + image[i+2][j+1] + image[i+2][j+2]
          result[i][j] = (result[i][j] / 9).floor
      end
  end
  return result
end 

#####################################################################
#####################################################################
=begin 
Given two cells on the standard chess board, determine whether they have the same color or not.

Example

For cell1 = "A1" and cell2 = "C3", the output should be
chessBoardCellColor(cell1, cell2) = true.

For cell1 = "A1" and cell2 = "H3", the output should be
chessBoardCellColor(cell1, cell2) = false.


=end 
def chessBoardCellColor(cell1, cell2)
  # if ODD && ODD == black 
  # if EVEN && EVEN == black 
  # if ODD & EVEN == white 
  # if EVEN && ODD = white 
  

  determine_color(cell1) == determine_color(cell2)
end

def determine_color(cell)
  hash = {} 
  
  ("A".."H").to_a.each_with_index do |char, idx| 
      hash[char] = idx + 1 
  end 

  color = "white"

  if hash[cell[0]] % 2 == 0 && cell[1].to_i % 2 == 0 ||
         hash[cell[0]] % 2 != 0 && cell[1].to_i % 2 != 0 
      color = "black"
  end 

  color 
end 
#####################################################################
#####################################################################
=beging 

Consider integer numbers from 0 to n - 1 written down along the circle in such a way that the distance between any two neighboring numbers is equal (note that 0 and n - 1 are neighboring, too).

Given n and firstNumber, find the number which is written in the radially opposite position to firstNumber.

Example

For n = 10 and firstNumber = 2, the output should be
circleOfNumbers(n, firstNumber) = 7.

=end 

def circleOfNumbers(n, firstNumber)
  pair = 0
  pair = (firstNumber + ((n / 2))).abs 
  if pair > n  
      pair = (firstNumber - ((n / 2))).abs  
  end 
  return (n-n) if pair > n - 1 
  pair 
end

# second  

def circleOfNumbers(n, firstNumber) 

  (firstNumber + (n / 2)) % n 
end 


# Third 

def circleOfNumbers(n, first_number) 
  result = n / 2 + first_number 
  result < n ? result : result - n 
end
#####################################################################
#####################################################################

# https://app.codesignal.com/arcade/intro/level-3/JKKuHJknZNj4YGL32 

def common_char_count(s1, s2) 
  count = 0 

  s1.each_char do |c| 
    cout += 1 if s2.include?(c) && s2[c] = "" 
  end 

  count 
end 

#####################################################################
#####################################################################

=begin 

You have deposited a specific amount of money into your bank account. Each year your balance increases at the same growth rate. With the assumption that you don't make any additional deposits, find out how long it would take for your balance to pass a specific threshold.

Example

For deposit = 100, rate = 20, and threshold = 170, the output should be
depositProfit(deposit, rate, threshold) = 3.

Each year the amount of money in your account increases by 20%. So throughout the years, your balance would be:

year 0: 100;
year 1: 120;
year 2: 144;
year 3: 172.8.
Thus, it will take 3 years for your balance to pass the threshold, so the answer is 3.
=end 


def depositProfit(deposit, rate, threshold)
  years = 0 
  rate = rate / 100.to_f 
  
  while threshold > deposit 
      years += 1 
      deposit += deposit * rate  # == deposite *= (1 + rate)
  end 
  years
end 


# formula  
# deposit + (deposite * rate)^y = balance after y Year 

def  
  
def depositProfit(deposit, rate, threshold)
  num = Math.log(threshold.to_f / deposit) 
  dem = Math.log(1 + (rate / 100.to_f)) 

  return (num / dem).ceil
end 


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
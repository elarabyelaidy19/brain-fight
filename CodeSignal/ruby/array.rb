# https://app.codesignal.com/arcade/intro/level-4/xvkRbxYkdHdHNCKjg 
=begin 
You are given an array of integers. On each move you are allowed to increase 
exactly one of its element by one. Find the minimal number of moves required 
to obtain a strictly increasing sequence from the input.

Example

For inputArray = [1, 1, 1], the output should be
arrayChange(inputArray) = 3. 

[1, 2 (+1), 3 (+2) ] 1+2 == 3
=end 

def array_change(array) 
  result = 0 

  array.each_with_index do |ele, idx| 
    prev = array[idx-1] 
    next if idx == 0 || ele > prev 
    moves = prev - ele + 1 
    result += moves 
    array[idx] = ele + moves 
  end 
  result
end  


# Two 

def arrayChange(array)
  max = -10**1000
  ans = 0 
  
   for i in (0..array.length - 1) 
       max = [array[i], max+1].max 
       ans += max - array[i]  
       p max 
   end
   ans
end




#####################################################################
#####################################################################
=begin 
# https://app.codesignal.com/arcade/intro/level-4/xYXfzQmnhBvEKJwXP  
Two arrays are called similar if one can be obtained from another by swapping at 
most one pair of elements in one of the arrays.

Given two arrays a and b, check whether they are similar.
=end
def are_similar(a, b) 
  indexs = [] 

  a.each_with_index { |ele, i| indexs.push(i) if ele != b[i] } 

  return false if indexs.length > 2 

  a.sort == b.sort 
end 

# TWO 

def is_similar(a,b) 

  sum, s1, s2 = 0, 1, 1 

  for i in (0..a.length - 1) 
    if (a[i] != b[i]) 
      sum += 1 
    end 
    s1 *= a[i] # product of all element in the array
    s2 *= b[i] 
  end 

  return sum <= 2 && s1 == s2

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

# Two 

def makeArrayConsecutive2(s) 
  arr = s.sort 
  range = arr[arr.length-1] - arr[0] 
  return range - s.length+1 
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
=begin 
# https://app.codesignal.com/arcade/intro/level-3/D6qmdBL2NYz49XHwM  
Some people are standing in a row in a park. There are trees between them which cannot be moved. 
Your task is to rearrange the people by their heights in 
a non-descending order without moving the trees. People can be very tall! 
=end
def sort_by_height(arr) 
  len = arr.lenght - 1 
  for i in (0..len) 
      for j in (0..len) 
        if (arr[j] > -1 && arr[i] > - 1 && arr[j] > arr[i]) 
          arr[j], arr[i] = arr[i], arr[j] 
        end 
      end 
    end 
  end 

  arr 
end 

def sort_by_height(arr) 
  heights = arr.select { |a| a>0 }.sort! 
  arr.map { |a| a == -1 ? heights.shift : -1 } 
end  

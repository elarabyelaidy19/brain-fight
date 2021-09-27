# https://app.codesignal.com/arcade/intro/level-4/xvkRbxYkdHdHNCKjg 

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



#####################################################################
#####################################################################




#####################################################################
#####################################################################



#####################################################################
#####################################################################




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
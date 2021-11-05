
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

# https://app.codesignal.com/arcade/intro/level-3/JKKuHJknZNj4YGL32 
# Given two strings, find the number of common characters between them. 
def common_char_count(s1, s2) 
  count = 0 

  s1.each_char do |c| 
    cout += 1 if s2.include?(c) && s2[c] = "" 
  end 

  count 
end 


#####################################################################
#####################################################################


def isIPv4Address(string)
  
  return false if string.count('.') != 3
  arr = string.split('.')   
  return false if arr.length < 4 || arr.include?("")  
  
    for i in (0..arr.length - 1) 
      return false if (arr[i].to_i > 255 || arr[i].to_i < 0)  
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

# https://app.codesignal.com/arcade/intro/level-4/Xfeo7r9SBSpo3Wico 
require 'set' 
def plindrome_rearranging(string) 
  set = Set.new 

  string.each_char do |ch| 
    
    if set.include?(c) 
      set.delete(c) 
    else  
      set.add(c) 
    end 
  end 

  set.length <= 1 ? true : false 
end  



#####################################################################
#####################################################################

# https://app.codesignal.com/arcade/intro/level-3/9DgaPsE2a7M6M2Hu6 
=begin 
Write a function that reverses characters in (possibly nested) parentheses in the input string.
Input strings will always be well-formed with matching ()s. 
=end
def reverse_parenthes(str) 
  return str if !str.include?("(") 
  pairs = str.count("(") 
  left = 0

  str.chars.each_with_index do |char, idx| 
    if char == "(" 
      pairs -= 1 
      pairs
      if pairs == 0 
        left = idx 
        left
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


# Correct variable names consist only of English letters, digits and underscores and they can't start with a digit.

def variable_name(name) 
  return false if /\d/.match(name[0]) 

  name.each_char do |c| 
    return false unless /[a-zA-Z]/.match(c) || /\d/.match(c) || c == "_" 
  end 
  true 
end 

def variableName(name) 
    # if regex return nil from pattern so it is not match this pattern 
    # if nil == true so it does not match 
   !(/^[a-zA-Z_][a-zA-Z0-9_]*$/ =~ name ).nil?
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



########################################################
########################################################

=begin 
https://app.codesignal.com/arcade/intro/level-7/PTWhv2oWqd6p4AHB9
Given an array of equal-length strings, you'd like to know if it's possible 
to rearrange the order of the elements in such a way that each consecutive pair of strings differ by exactly one character. 
Return true if it's possible, and false if not.
Note: You're only rearranging the order of the strings, not the order of the letters within the strings!
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

#######################################################################
#######################################################################

=begin
https://app.codesignal.com/arcade/intro/level-8/rRGGbTtwZe2mA8Wov
Find the leftmost digit that occurs in a given string.
=end

def firstDigit(string) 
  /[0-9]/.match(string) # 1
  string.match(/\d/)  # 2 
  string.scan(/\d/)[0]  # 3
   /\d/.match(string)
end

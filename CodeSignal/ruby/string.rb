
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
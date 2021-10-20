
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
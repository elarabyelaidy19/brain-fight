# https://leetcode.com/problems/length-of-last-word/ 

def length_of_last_world(s) 
  last_word = 0 
  current_word = 0 

  for i in (0..s.length -1) 
    if (s[i] == ' ') 
      current_word = 0 
    else 
      current_word += 1 
      last_word = current_word 
    end 
  end 
  last_word 
end 

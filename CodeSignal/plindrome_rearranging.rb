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
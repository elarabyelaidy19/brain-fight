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

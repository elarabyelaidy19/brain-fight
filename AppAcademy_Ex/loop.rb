# Write a method count_e(word) that takes in a string word and returns the number of e's in the word  

def count_e(word) 

  count = 0 

  (0...word.length).each do |ele| 
    count += 1 if word[ele] == "e" 
  end 

  count 
end 

p count_e("eleare")  
p  count_e "alaraby"

# sol 2 

def count_e(word) 
  
  count = 0 
  
  i = 0 
  while i < word.length 

    if word[i] == "e" 
      count += 1 
    end 
    
    i += 1
  end 

  return count 
end 

p count_e("eleare")  
p  count_e "alaraby"
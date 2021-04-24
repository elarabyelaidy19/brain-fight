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


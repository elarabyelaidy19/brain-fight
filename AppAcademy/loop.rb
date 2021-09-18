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


# Write a method count_a(word) that takes in a string word and returns the number of a's in the word. The method should count both lowercase (a) and uppercase (A) 

def count_a(word) 

  count = 0 

  (0...word.length).each do |ele| 
     count += 1 if word[ele] == "a"  || word[ele] == "A" 
  end 
  count 
end 

puts count_a("application")  # => 2
puts count_a("bike")         # => 0
puts count_a("Arthur")       # => 1
puts count_a("Aardvark")     # => 3  



# Write a method, count_vowels(word), that takes in a string word and returns the number of vowels in the word. Vowels are the letters a, e, i, o, u. 

def count_vowels(word) 
  vowels = "aeiou" 

  count = 0 
  (0...word.length).each do |ele| 
    count += 1 if vowels.include?(word[ele]) 
  end 

  count 
end  

puts count_vowels("bootcamp")  # => 3
puts count_vowels("apple")     # => 2
puts count_vowels("pizza")     # => 2  



# Write a method sum_nums(max) that takes in a number max and returns the sum of all numbers from 1 up to and including max.  


def sum_nums(number) 

  sum = 0 
  (1..number).each do |num| 
    sum += num 
  end 

  sum
end 

puts sum_nums(4) # => 10, because 1 + 2 + 3 + 4 = 10
puts sum_nums(5) # => 15  


# Write a method factorial(num) that takes in a number num and returns the product of all numbers from 1 up to and including num. 

def factorial(num) 

  product = 1 

  (1..num).each do |ele| 
    product *= ele 
  end 

  product 
end 

puts factorial(3) 
puts factorial(5) 

# Write a method reverse(word) that takes in a string word and returns the word with its letters in reverse order. 

def reverse(word) 

  new_word = "" 
  length = word.length 

  while length > 0 
    new_word += word[length - 1]

    length -= 1
  end 

  new_word
end 

puts reverse("cat")        
puts reverse("programming")  
puts reverse("bootcamp")   


# Write a method is_palindrome(word) that takes in a string word and returns the true if the word is a palindrome, false otherwise.
 # A palindrome is a word that is spelled the same forwards and backwards.

def is_palindrome(word) 

   word == reverse(word)
end 

puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false


def is_palindrome(word) 
  
  return true if word[0] == word[-1] 
  false 
end 


puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") 


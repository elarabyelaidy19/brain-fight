=begin 

https://app.codesignal.com/arcade/intro/level-9/hoLtYWbjdrD2PF6yo 

Let's define digit degree of some positive integer as the number of times we need to replace this number
with the sum of its digits until we get to a one digit number.

Given an integer, find its digit degree.

Example

For n = 5, the output should be
digitDegree(n) = 0;
For n = 100, the output should be
digitDegree(n) = 1.
1 + 0 + 0 = 1.
For n = 91, the output should be
digitDegree(n) = 2.
9 + 1 = 10 -> 1 + 0 = 1. 
=end 

# one 

def digitDegree(n)  
  i = 0 

  while n / 10 != 0 
    n = sum_digits(n) 
    i += 1 
  end 
  i
end 

def sum_digits(n) 
  sum = 0 

  while n != 0 
    sum += n % 10 
    n /= 10 
  end 
  sum 
end 

# two 

def digitDegree(n)
  return 0 if n / 10 == 0 
  num = 0
  while n != 0
    num += n % 10 
    n /= 10 
  end 
  
  1 + digitDegree(num)
end 



########################################################
########################################################
=begin 
https://app.codesignal.com/arcade/intro/level-9/6M57rMTFB9MeDeSWo 

Given the positions of a white bishop and a black pawn on the standard chess board,
determine whether the bishop can capture the pawn in one move.

The bishop has no restrictions in distance for each move, but is limited to diagonal movement.
Check out the example below to see how it can move:
=end 

def  bishopAndPawn(bishop, pawn) 
  p x1 = bishop[0].ord # "a".ord == 97
  p y1 = bishop[1].to_i # "1".to_i == 1 
  p x2 = pawn[0].ord      # "c".ord == 99 
  p y2 = pawn[1].to_i     # "3".to_i == 3

  (x2 - x1).abs == (y2 - y1).abs  ## increasing occur at equal rate in both direction
end 

########################################################
########################################################

=begin 
https://app.codesignal.com/arcade/intro/level-10/PHSQhLEw3K2CmhhXE/solutions 
A string is said to be beautiful if each letter in the string appears at most as many times as the previous 
letter in the alphabet within the string; ie: b occurs no more times than a;
c occurs no more times than b; etc. Note that letter a has no previous letter.
=end 

def beautiful_string?(s) 
  hash = {} 
  len = s.length - 1 

  (0..len).each do |i| 
    current = s[i] 
    p hash[current]
    if hash[current]
      hash[current] += 1 
    else 
      hash[current] = 1 
    end 
  end 

  letters = ('a'..'z').to_a 
  lett_len = letters.length - 1 

  (0..lett_len).each do |i| 
    letter = letters[i] 
    next_letter = letters[i+1] 

    cl = hash[letter].to_i 
    nl = hash[next_letter].to_i 

    if cl < nl 
      return false  
    end 
  end 
  return true 
end 

# two 

def beautiful_string?(s) 
  
  ('a'..'z').map { |x| s.count(x) }.each_cons(2).all?{|a, b| a >= b } 
end 


########################################################
########################################################

########################################################
########################################################

########################################################
########################################################

########################################################
########################################################

########################################################
########################################################

########################################################
########################################################

########################################################
########################################################



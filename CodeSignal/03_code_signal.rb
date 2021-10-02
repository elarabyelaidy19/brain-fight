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



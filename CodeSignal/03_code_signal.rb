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


# two 

def beautiful_string?(s) 
  count = [0] * 26 # [0, 0, ......]
  len = s.length - 1 

  (0..len).each do |i| ### bbbaa 
    # count [x] = b.ord - 'a'.ord = 98 - 97 = 1 index[1] += 1 
    # count[1] = 1     ## b#bbaa   
    # count[x] = b.ord - 'a'.ord = 98 - 97 = 1 index[1] += 1 
    # count[1] = 2 .... 
    count[s[i].ord - 'a'.ord] += 1   
  end

  for j in (0...count.length - 1) 
    return false if count[j-1] < count[j] 
  end 
  return true 
end 



end 
########################################################
########################################################
=begin 
https://app.codesignal.com/arcade/intro/level-10/TXFLopNcCNbJLQivP/solutions

An email address such as "John.Smith@example.com" is made up of a local part 
("John.Smith"), an "@" symbol, then a domain part ("example.com").

The domain name part of an email address may only consist of letters, digits, 
hyphens and dots. The local part, however, also allows a lot of different special characters. 
Here you can look at several examples of correct and incorrect email addresses.

Given a valid email address, find its domain part. 
=end 

def findEmailDomain(address)
  at = /@/ 
  i = 0 
  address.map.each_cahr.with_index {|c, idx| i = idx if at.match(c) } 
  address[i+1..-1]
end

# two  
def findEmailDomain(address)
  array_split = address.split("@") 
  array_split.last
end 

########################################################
########################################################
=begin 
https://app.codesignal.com/arcade/intro/level-10/ppZ9zSufpjyzAsSEx
Given a string, find the shortest possible string which can be achieved by adding characters
to the end of initial string to make it a palindrome.

Example

For st = "abcdc", the output should be
buildPalindrome(st) = "abcdcba".
=end 

def buildPalindrome(st) 
  len = st.length
  temp = ""
  (0...len).each do |i| 
    temp = st + st[0...i].reverse # reverse extra chars to meet plindronme
    return temp if temp == temp.reverse # return  if the the iterations genertate plindrome  
  end 
end 

# two 

def buildPalindrome(st) 
  len = st.length 

  (0...len).each do |c| 
    break if st == st.reverse
    st = st.insert(len, c) # insert start at index len 
  end 
  st 
end 

########################################################
########################################################
=begin 
https://app.codesignal.com/arcade/intro/level-10/8RiRRM3yvbuAd3MNg 
Elections are in progress!

Given an array of the numbers of votes given to each of the candidates so far,
and an integer k equal to the number of voters who haven't cast their vote yet,
find the number of candidates who still have a chance to win the election.

The winner of the election must secure strictly more votes than any other candidate.
If two or more candidates receive the same (maximum) number of votes, assume there is no winner at all.
=end 
def electionsWinners(votes, k)
  winner = votes.max 
  winners = 0 
  
  
  if k == 0
      # in case there is no voters(k) and there is number of equal candidate return 0
      return 0 if votes.count(winner) > 1
      # if there is no voters return 1 the max voted candidate 
      return 1 if k == 0 
  end  
  
  votes.each do |cand| 
      if cand + k > winner 
          winners += 1 
      end 
  end 
  winners
end



end 
########################################################
########################################################

########################################################
########################################################

########################################################
########################################################

########################################################
########################################################



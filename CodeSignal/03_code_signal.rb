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

# two 

def electionsWinners(votes, k) 
  

########################################################
########################################################

=begin 
https://app.codesignal.com/arcade/intro/level-10/HJ2thsvjL25iCvvdm 
A media access control address (MAC address) is a unique identifier assigned to 
network interfaces for communications on the physical network segment.

The standard (IEEE 802) format for printing MAC-48 addresses in human-friendly 
form is six groups of two hexadecimal digits (0 to 9 or A to F), 
separated by hyphens (e.g. 01-23-45-67-89-AB).
=end 

def is_mac_address(string) 
  return false if string.length > 17 
  nums = ("0".."9").to_a 
  alph = ("A".."F").to_a 
  array = string.split("-") 
  return false if array.length != 6 
  return false if array.any? { |c| c.length != 2 } 

  array.all? {|c| nums.include?(c[0]) || alph.include?(c[0]) && nums.include?(c[1]) || alph.include?(c[1]) }

end 
########################################################
########################################################
=begin 
https://app.codesignal.com/arcade/intro/level-11/Zr2XXEpkBPtYWqPJu
Determine if the given character is a digit or not.

Example

For symbol = '0', the output should be
isDigit(symbol) = true;
For symbol = '-', the output should be
isDigit(symbol) = false.
=end 

def isDigit(ch) 
  ch.ord.between?(48, 57) 
end 

#two 
def isDigit(ch) 
  return true if /\d/.match(ch) 
  false
end 

########################################################
########################################################
=begin 
https://app.codesignal.com/arcade/intro/level-11/o2uq6eTuvk7atGadR 
Given a string, return its encoding defined as follows:

First, the string is divided into the least possible number of disjoint substrings 
consisting of identical characters
for example, "aabbbc" is divided into ["aa", "bbb", "c"]
Next, each substring with length greater than one is replaced with a concatenation 
of its length and the repeating character
for example, substring "bbb" is replaced by "3b"
Finally, all the new strings are concatenated together in the same order and a new string is returned.
=end
def lineEncoding(s)
  # increase size by elemnt to iterate upon array
  s += " "
  count = 1
  len = s.length - 1 
  new_s = []
  for i in (1..len) 
      # if previous element == next so we have two count = 1 and count += 1
      if s[i] == s[i-1] 
          count += 1 
      else 
          #
          if count > 1 
             new_s.append(count) 
          end 
          new_s.append(s[i-1]) 
          count = 1
      end 
  end
  new_s.join
end

########################################################
########################################################
https://app.codesignal.com/arcade/intro/level-11/pwRLrkrNpnsbgMndb 

def chessKnight(cell)
    moves = 8 
    
    # a1
    if cell[0] == 'b' || cell[0] == 'g' 
        moves -= 2 
    end
    if cell[1] == '7' || cell[1] == '2' 
        moves -= 2
    end
    if cell[0] == 'a' || cell[0] == 'h'
        moves /= 2 
      # moves become 4 because 'a' and move to cell[1]
    end 
    if cell[1] == '1' || cell[1] == '8' 
        moves /= 2  
      # moves become 4 / 2 because 1 and  exit return 2 
    end 
     
    return moves
end


########################################################
########################################################
=begin 
https://app.codesignal.com/arcade/intro/level-11/vpfeqDwGZSzYNm2uX
Given some integer, find the maximal number you can obtain by deleting exactly one digit of the given number.

Example

For n = 152, the output should be
deleteDigit(n) = 52;
For n = 1001, the output should be
deleteDigit(n) = 101.
=end 

def deleteDigit(n) 
  max = 0 
  t = 1 
  # 152 first iteration value 15 t = 1, seconde iteration t = 10 value 12  
  # third t = 100 result 52 
  while n > t 
    max = [max, (n / 10 / t) * t + n % t].max 
    t *= 10 
  end 
  max 
end 

# two 

def deleteDigit(n)
  max = 0 
  n = n.to_s 
  len = n.length - 1 
  
  for i in (0..len) 
      if i == 0 
          slide = n[1..-1].to_i
          max = slide if slide > max 
      elsif i == len
          p slide = n[0..-2].to_i 
          max = slide if slide > max 
      else 
          p slide = (n[0..i-1] + n[i+1..-1]).to_i 
          max = slide if slide > max
      end 
  end
  max
end


########################################################
########################################################
=begin 
https://app.codesignal.com/arcade/intro/level-12/s9qvXv4yTaWg8g4ma 
Define a word as a sequence of consecutive English letters. Find the longest word from the given string.

Example

For text = "Ready, steady, go!", the output should be
longestWord(text) = "steady". 

=end
def longestWord(text)
  words = text.scan(/[a-zA-Z]+/) # == #split(/\W|_/) 
  max = "" 
  
  for i in (0..words.length - 1) 
      max = words[i] if words[i].length > max.length 
  end 
  max
end 

# two 

def longestWord(text)
  words = text.scan(/[a-zA-Z]+/) # == #split(/\W|_/) 
  words.max_by(&:lenght)
end 

# three  
def longestWord(text)
  text.split(/\W/).sort {|a,b| a.length <=> b.length}.last
end

########################################################
########################################################
=begin 
https://app.codesignal.com/arcade/intro/level-12/ywMyCTspqGXPWRZx5 
Check if the given string is a correct time representation of the 24-hour clock.

Example

For time = "13:58", the output should be
validTime(time) = true;
For time = "25:51", the output should be
validTime(time) = false;
For time = "02:76", the output should be
validTime(time) = false.
=end

def validTime(time)
  # return false unless time.include?(":")
  num = time.split(":") 
  p num 
  num.each do |i| 
      return num[0].to_i.between?(0,23) && num[1].to_i.between?(0,59)
  end 
  true
end

def validTime(time)
  # return false unless time.include?(":")
  num = time.split(":").map(&:to_i) 
  return num[0].between?(0,23) && num[1].between?(0,59)
end



########################################################
########################################################
########################################################
########################################################


########################################################
########################################################


########################################################
########################################################
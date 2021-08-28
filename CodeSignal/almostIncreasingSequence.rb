# https://app.codesignal.com/arcade/intro/level-2/2mxbGwLzvkTCKAJMG

def almostIncreasingSequence(sequence) 
  counter = 0
  biggest_value = -10 ** 5 
  second_biggest_value = biggest_value
  
  sequence.each do |seq|
    if seq > biggest_value 
      second_biggest_value = biggest_value 
      biggest_value = seq 
  
    elsif seq > second_biggest_value 
      biggest_value = seq
      counter += 1
  
    else
      counter += 1
  
    end
  end
  counter <= 1 ? true : false
  
end 


#  another sol 

def almostIncreasingSequence(sequence) 
  return false if sequence.each_cons(2).count { |a, b| a >= b } > 1 
  return false if sequence.each_cons(3).count { |a, b, c| (a >= b && a >= c) || (a >= b && b >= c) || (a >= c && b >= c) } > 1 
  return true 
end  
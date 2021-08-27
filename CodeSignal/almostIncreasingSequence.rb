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
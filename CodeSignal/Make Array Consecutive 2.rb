# https://app.codesignal.com/arcade/intro/level-2/bq2XnSr5kbHqpHGJC 

def makeArrayConsecutive2(statues)
  length = statues.length - 1 
  smallest = statues.min 
  biggest = statues.max 
  
  actualLength = (biggest - smallest) 
  
  if actualLength == length 
      return 0 
  else 
      actualLength - length 
  end  
  
end




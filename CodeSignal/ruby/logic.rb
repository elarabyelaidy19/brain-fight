
#####################################################################
#####################################################################

# https://app.codesignal.com/arcade/intro/level-5/g6dc9KJyxmFjB98dL 

def are_equally_strong(yourLeft, yourRight, friendsLeft, friendsRight)
  return (yourLeft + yourRight) == (friendsLeft + friendsRight) && 
  (yourLeft == friendsLeft || yourRight == friendsLeft || yourRight == friendsRight)   
end 

# another approach 


def are_equally_strong(yourLeft, yourRight, friendsLeft, friendsRight)
  me = [yourLeft, yourRight] 
  my_friend = [friendsLeft, friendsRight] 
     
  me.max == my_friend.max && me.min == my_friend.min
end 

# again  

def are_equally_strong(yourLeft, yourRight, friendsLeft, friendsRight) 
  me = [yourLeft, yourRight] 
  my_friend = [friendsLeft, friendsRight] 

  me.sort == my_friend.sort 
end 




#######################################################################
#######################################################################
# https://app.codesignal.com/arcade/intro/level-9/r9azLYp2BDZPyzaG2 

def knapsackLight(value1, weight1, value2, weight2, maxW)
  return (value1 + value2) if maxW >= (weight1 + weight2)  #
  return 0 if maxW < weight1 && maxW < weight2 
  return [value1, value2].max if weight1 <= maxW && weight2 <= maxW
  return value1 if weight2 > maxW && weight1 <= maxW 
  return value2 if weight1 > maxW && weight2 <= maxW 
end

# Two 
def knapsackLight(value1, weight1, value2, weight2, maxW)
  max_value = 0 
  return value1 + value2 if (weight1 + weight2) <= maxW
  
  if value1 > value2 || weight2 > maxW 
    max_value = value1 if maxW >= weight1 
  else 
    max_value = value2 if maxW >= weight2 
  end 
  max_value
end 

end



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


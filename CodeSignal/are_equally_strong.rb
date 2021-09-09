# https://app.codesignal.com/arcade/intro/level-5/g6dc9KJyxmFjB98dL 

def are_equally_strong(yourLeft, yourRight, friendsLeft, friendsRight)
  return (yourLeft + yourRight) == (friendsLeft + friendsRight) && 
  (yourLeft == friendsLeft || yourRight == friendsLeft || yourRight == friendsRight)   
end 


def add_odd(n) 
  return n if n == 1 

  if n.even? 
    add_odd(n - 1)  
  else 
    n + add_odd(n - 1) 
  end 

end 

p add_odd(19)
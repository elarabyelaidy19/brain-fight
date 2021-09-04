# https://app.codesignal.com/arcade/intro/level-3/3AdBC97QNuhF6RwsQ 

def isLucky(n)
  arr = n.to_s.split('').map(&:to_i)
  len = arr.size - 1 
  mid  = len / 2
  l = 0 
  r = 0
  
  for i in (0..len) 
      if i <= mid 
          l += arr[i].to_i 
      else 
          r += arr[i].to_i 
      end  
  end  
  
  if l == r 
      return true 
  else 
      return false 
  end 
end


# second approach 

def is isLucky(n) 
  arr = n.to_s.split('').map(&:to_i) 
  len = arr.lenght - 1 
  mid = len / 2 
  sum = 0

  (0..mid).each do |i| 
    sum += (arr[i] - arr[len-i]) 
  end 

  sum == 0
end 
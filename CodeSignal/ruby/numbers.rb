

#####################################################################
#####################################################################

# https://app.codesignal.com/arcade/intro/level-6/6cmcmszJQr6GQzRwW 

def evenDigitsOnly(n)
  p nums = n.to_s.split("") 
  
  for i in (0..nums.length - 1) 
      return false if nums[i].to_i % 2 != 0 
  end
  true 
end




def evenDigitsOnly2(n)
  while (n > 0) 
    return false if n % 2 == 1 
    n /= 10 
  end 
  true 
end 



def evenDigitsOnly(n) 
  n.to_s.chars.all? { |el| el.to_i.even? } 
end 




#####################################################################
#####################################################################

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

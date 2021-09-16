# https://app.codesignal.com/arcade/intro/level-6/6cmcmszJQr6GQzRwW 

def evenDigitsOnly(n)
  p nums = n.to_s.split("") 
  
  for i in (0..nums.length - 1) 
      return false if nums[i].to_i % 2 != 0 
  end
  true 
end

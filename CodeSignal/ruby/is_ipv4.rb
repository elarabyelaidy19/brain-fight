
def isIPv4Address(string)
  
  return false if string.count('.') != 3
  arr = string.split('.')   
  return false if arr.length < 4 || arr.include?("")  
  
    for i in (0..arr.length - 1) 
      return false if (arr[i].to_i > 255 || arr[i].to_i <= 0)  
      return false if arr[i].count("a-zA-Z") > 0 
    end  
  true 
end

# second 

def isIPv4Address(string)  
  return false if string.count(".") != 3 
  string.split('.').each { |x| return false if x.to_i.to_s != x || x.to_i > 255 } 
  true 
end 
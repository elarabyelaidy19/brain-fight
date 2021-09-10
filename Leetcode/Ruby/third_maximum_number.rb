# https://leetcode.com/problems/third-maximum-number/ 

# @param {Integer[]} nums
# @return {Integer}
def third_max(nums) 
  fm = nil
  sm = nil   
  tm = nil 

  nums.each do |num|
      if (fm == nil || num > fm) 
          tm, sm, fm = sm, fm, num 
      elsif num == fm 
          next
      elsif (sm == nil || num > sm) 
          tm, sm = sm, num
      elsif num == sm 
          next
      elsif (tm == nil || num > tm) 
          tm = num 
      end 
  end 
    
  if tm != nil 
      tm 
  else 
      fm 
  end 
  
end
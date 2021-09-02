# https://leetcode.com/problems/lemonade-change/ 

def lemonade_change(bills) 
  fives, tens = 0, 0 

  bills.each do |i| 
    if i == 5 
      fives += 1 
    elsif i == 10 
      tens += 1 
      fives -= 1 
    elsif 
      tens -= 1 
      fives -= 1 
    else 
      fives -= 3 
    end 

    return false if fives < 0 
  end 
  true  
end 
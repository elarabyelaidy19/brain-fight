# https://app.codesignal.com/arcade/intro/level-4/cC5QuL9fqvZjXJsW9 

def alternating_sum(array) 
  team_one = 0 
  team_two = 0 
  new_array = [] 

  array.each_with_index do |idx| 
    team_one += array[idx] if idx.even? 
    team_two += array[idx] if idx.odd? 
  end 

  new_array << team_one << team_two 
end 
def num_of_jewels_in_stones(jewels, stones) 
  set = Set.new(jewels.chars) 
  count = 0 

  stones.each_char do |stone| 
    count += 1 if set.include?(stone) 
  end

  count 
end 
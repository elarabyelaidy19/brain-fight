# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
    hash = {} 
    nums.each do |n| 
        if hash.include?(n) 
            hash[n] += 1 
        else 
            hash[n] = 1 
        end 
    end 
    hash.sort_by {|_k, v| -v }.first(k).map(&:first)
end  


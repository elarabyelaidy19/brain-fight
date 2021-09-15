# https://app.codesignal.com/arcade/intro/level-3/9DgaPsE2a7M6M2Hu6 

def reverse_parenthes(str) 
  return str if !str.include?("(") 
  pairs = str.count("(") 
  left = 0

  str.chars.each_with_index do |char, idx| 
    if char == "(" 
      pairs -= 1 
      p pairs
      if pairs == 0 
        left = idx 
        p left
      end 
    end
  end 

  right1 = str[left..-1].index(")")
  p right1
  right = right1 + left 
  p right
  str[left..right] = str[(left + 1)..(right - 1)].reverse

  reverse_parenthes(str)

end 
# https://app.codesignal.com/arcade/intro/level-4/xYXfzQmnhBvEKJwXP 

def are_similar(a, b) 
  indexs = [] 

  a.each_with_index { |ele, i| indexs.push(i) if ele != b[i] } 

  return false if indexs.length > 2 

  a.sort == b.sort 
end 
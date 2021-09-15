# https://app.codesignal.com/arcade/intro/level-4/xvkRbxYkdHdHNCKjg 

def array_change(array) 
  result = 0

  array.each_with_index do |ele, idx| 
    prev = array[idx - 1] 
    next if idx == 0 || prev < ele 
    moves = ele - prev + 1 
    result += moves 
    array[idx] = moves + ele
  end 

  result
end 
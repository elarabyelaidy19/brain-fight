# swap the last element with the first element

def solution(arr) 
    return arr if arr.empty?
    arr[0], arr[arr.length - 1] = arr[arr.length - 1], arr[0] 
    arr
end 

def solution2(arr) 
    l = arr.length - 1 
    if(l > 0) 
        arr[0] = arr[0] ^ arr[-1] ^ (arr[-1] = arr[0]) 
    end 
    return arr
end 


# Concatenate two arrays

def concatenate(a, b) 
    a + b 
end  

def concatenate(a, b) 
    a.concat(b) 
end  


# remove part of an array
def solution(inputArray, l, r)
    res = []
    for i in 0..inputArray.length - 1 
        next if (i >= l && i <= r) 
        res << inputArray[i] 
    end 
    res
end

def solution(inputArray, l, r)
    inputArray.slice!(l..r) 
    inputArray
end 

def solution(inputArray, l, r)
    inputArray.reject.each_with_index { |x, i| i.between?(l,r) }
end

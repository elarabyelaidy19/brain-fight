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
    arr
end 


# Concatenate two arrays

def concatenate(a, b) 
    a + b 
end  

def concatenate(a, b) 
    a.concat(b) 
end  

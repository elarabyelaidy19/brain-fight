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


# somoothe array array that first element is the same as the last element and the middle if odd, and 
# equal the sum of the middle element if even. 

def solution(arr)
    if arr.size % 2 == 0
        arr[0] == arr[-1] && arr[0] == arr[arr.size / 2] + arr[arr.size / 2 - 1] 
    else 
        arr[0] == arr[-1] && arr[0] == arr[(arr.size / 2)] 
    end 
end 


# replace middle element with the sum of the middle two elements if even 

def replace_middle(arr) 
    m = arr.size / 2 
    arr[~m..m] = arr[~m..m].sum 
    arr 
end 


def replace_middle(arr) 
    if arr.size.even? 
        middle = arr[arr.size / 2 - 1] + arr[arr.size / 2] 
        arr[arr.size / 2, 2] = middle 
    end  
    arr 
end


# count num of missing elements in an array to make it conscutive

def solution(statues)
    return (statues.max - statues.min) - (statues.size-1)
end

def solution(arr) 
    arr.sort! 
    arr[-1] - arr[0] - arr.size + 1
end 
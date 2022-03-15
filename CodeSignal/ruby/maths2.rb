# check if number is power of anothr number '
# O(n^2)
def solution(n)
    for i in 1..20 
        for j in 2..20 
            return true if i**j == n
        end 
    end  
    false
end
 

=begin ## optimized of O(sqrt(n)) 

Consider a num N which needs 
to be expressed in the form (a^b).
N = a^b
Taking log both sides:
log (N) = b.log (a)
b = log(N)/log(a)
=end

def solution(n)
    return true if n == 1
    for i in 2..Math.sqrt(n) 
        val = Math.log(n) / Math.log(i) 
        return true if((val - val.floor) < 0.001) 
    end 
    false 
end


# count number of way to represent n as sum of some consecutive numbers

# O(n2)
def solution(n)
    count = 0 
    for i in 1..n  
        sum = i
        for j in i+1..n 
            sum += j 
            count += 1 if sum == n 
        end 
    end  
    count
end


# Optimized O(n)

def solution(n) 
    cnt = 0  
    i = 3 
    while n >= i 
        cnt += 1 if n % i == 0 
        i += 2 
    end
    cnt 
end 




# square digit sum every element is element is equal to the sum of squared digits of the previous element.  
# The sequence ends once an element that has already been in the sequence appears again. 

def square_sequence(n)
    arr = [n] 
    while true 
        n = n.to_s.char.map(&:to_i).map { |x| x**2 }.sum 
        return arr.size + 1 if arr.include?(n) 
        arr << n 
    end
    arr
end

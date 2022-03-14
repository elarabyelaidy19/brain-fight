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

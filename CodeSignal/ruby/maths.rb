def phoneCall(min1, min2_10, min11, s)
  
end



#####################################################################
#####################################################################
=beging 

Consider integer numbers from 0 to n - 1 written down along the circle in such a way that the distance between any two neighboring numbers is equal (note that 0 and n - 1 are neighboring, too).

Given n and firstNumber, find the number which is written in the radially opposite position to firstNumber.

Example

For n = 10 and firstNumber = 2, the output should be
circleOfNumbers(n, firstNumber) = 7.

=end 

def circleOfNumbers(n, firstNumber)
  pair = 0
  pair = (firstNumber + ((n / 2))).abs 
  if pair > n  
      pair = (firstNumber - ((n / 2))).abs  
  end 
  return (n-n) if pair > n - 1 
  pair 
end

# second  

def circleOfNumbers(n, firstNumber) 

  (firstNumber + (n / 2)) % n 
end 


# Third 

def circleOfNumbers(n, first_number) 
  result = n / 2 + first_number 
  result < n ? result : result - n 
end




#####################################################################
#####################################################################

=begin 

You have deposited a specific amount of money into your bank account. Each year your balance increases at the same growth rate. With the assumption that you don't make any additional deposits, find out how long it would take for your balance to pass a specific threshold.

Example

For deposit = 100, rate = 20, and threshold = 170, the output should be
depositProfit(deposit, rate, threshold) = 3.

Each year the amount of money in your account increases by 20%. So throughout the years, your balance would be:

year 0: 100;
year 1: 120;
year 2: 144;
year 3: 172.8.
Thus, it will take 3 years for your balance to pass the threshold, so the answer is 3.
=end 


def depositProfit(deposit, rate, threshold)
  years = 0 
  rate = rate / 100.to_f 
  
  while threshold > deposit 
      years += 1 
      deposit += deposit * rate  # == deposite *= (1 + rate)
  end 
  years
end 


# formula  
# deposit + (deposite * rate)^y = balance after y Year 

def  
  
def depositProfit(deposit, rate, threshold)
  num = Math.log(threshold.to_f / deposit) 
  dem = Math.log(1 + (rate / 100.to_f)) 

  return (num / dem).ceil
end 



#####################################################################
#####################################################################

# https://app.codesignal.com/arcade/intro/level-2/yuGuHvcCaFCKk56rJ 

def shapeArea(n) 
  area = (n*n) + ( (n-1) * (n-1) ) 
end 



#######################################################################
#######################################################################

=begin 
Caring for a plant can be hard work, but since you tend to it regularly, you have a plant that grows consistently. Each day, its height increases by a fixed amount represented by the integer upSpeed. But due to lack of sunlight, the plant decreases in height every night, by an amount represented by downSpeed.

Since you grew the plant from a seed, it started at height 0 initially. Given an integer desiredHeight, your task is to find how many days it'll take for the plant to reach this height.

Example

For upSpeed = 100, downSpeed = 10, and desiredHeight = 910, the output should be
growingPlant(upSpeed, downSpeed, desiredHeight) = 10.

=end 

# one 
def growingPlant(up, down, desiredHeight) 
  days = 1 
  decrease = up 

  while desiredHeight > decrease 
    decrease += (up - down) 
    days += 1 
  end 
  days 
end 

def growingPlant(up, down, desiredHeight) 
  days = 0 
  decrease = 0 

  while desiredHeight > decrease 
    decrease += up     
    days += 1 
    return days if decrease >= desiredHeight 
    decrease -= down
  end 
  days 
end 


def growingPlant(up, down, desiredHeight) 
  return 1 if up > desiredHeight 
  ((desiredHeight - down).fdiv(up - down)).ceil 
  # fdiv return floating point div 
  # ceil return approxaimate value  
end

=begin 
https://app.codesignal.com/arcade/intro/level-9/hoLtYWbjdrD2PF6yo 

Let's define digit degree of some positive integer as the number of times we need to replace this number
with the sum of its digits until we get to a one digit number.

Given an integer, find its digit degree.
 
=end 

# one 

def digitDegree(n)  
  i = 0 

  while n >= 10 
    n = sum_digits(n) 
    i += 1 
  end 
  i
end 

def sum_digits(n) 
  sum = 0 

  while n != 0 
    sum += n % 10 
    n /= 10 
  end 
  sum 
end 

# two 

def digitDegree(n)
  return 0 if n / 10 == 0 
  num = 0
  while n != 0
    num += n % 10 
    n /= 10 
  end   
  
  1 + digitDegree(num)
end 





# find the smallest factorial which is not less than n.
def solution(n)
  i = 1  
  result = 1
  while n > result 
      result*= i+=1
  end
  result
end


#They have just learned how to add two integers, written one below another, column by column. 
# But the child always forgets about the important part - carrying.

def solution(param1, param2)
  mul = 1
  res = 0 
  while(param1 + param2 > 0) 
       mul *= 10 
       res += (param1 + param2) % mul 
       param1 -= param1 % mul 
       param2 -= param2 % mul
  end 
  return res
end
=begin 
# Define an integer's roundness as the number of trailing zeroes in it.

Given an integer n, check if it's possible to increase n's roundness by swapping some pair of its digits.

For n = 902200100, the output should be
solution(n) = true.   
solution(n) = false
=end

def solution(n)
    num = n.to_s  
    count_zeros = 0 
    0.upto(num.length - 1) do |i| 
        if num[i] == "0" 
            count_zeros += 1 
        end  
    end         
    n % (10**count_zeros) != 0
end  

def roundness(n) 
  while n != 0 
    if n % 10 != 0 
      return n.to_s.include?("0") ? true : false 
    end 
    n /= 10 
  end   
end  

=begin 
# apple boxes You have k apple boxes full of apples. Each square box of size m contains m × m apples. 
You just noticed two interesting properties about the boxes:

The smallest box is size 1, the next one is size 2,..., all the way up to size k.
Boxes that have an odd size contain only yellow apples. Boxes that have an even size contain only red apples.
Your task is to calculate the difference between the number of red apples and the number of yellow apples. 
=end
def solution(k)
   result = 0 
   (1..k).each do |i| 
        if (i%2 == 0) 
            result += i*i 
        else 
            result -= i*i 
        end 
    end  
    result 
end










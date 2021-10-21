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

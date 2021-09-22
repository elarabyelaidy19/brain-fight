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
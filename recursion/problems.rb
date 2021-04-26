# Write a function sum_to(n) that uses recursion to calculate the sum from 1 to n (inclusive of n). 

def sum_to(n) 
  return n if n == 1 

  n + sum_to(n - 1)
end 

p sum_to(9) 


# Write a function add_numbers(nums_array) that takes in an array of Integers and returns the sum of those numbers. Write this method recursively. 

def add_numbers(nums_array) 

  return nums_array.first if nums_array.length <= 1

  nums_array.pop + add_numbers(nums_array) 

end

p add_numbers([3, 8, 8, 9, 2, 1, 6]) 


# Let's write a method that will solve Gamma Function recursively. The Gamma Function is defined Γ(n) = (n-1)! 

def gamma_fnc(n) 

  return nil if n < 1  
  return 1 if n == 1 

  (n - 1) * gamma_fnc(n - 1)
end 

p  gamma_fnc(0)  # => returns nil
p  gamma_fnc(1)  # => returns 1
p  gamma_fnc(4)  # => returns 6
p  gamma_fnc(8)  # => returns 5040


# Write a function ice_cream_shop(flavors, favorite) that takes in an array of ice cream flavors available at the ice cream shop,
# as well as the user's favorite ice cream flavor.Recursively find out whether or not the shop offers their favorite flavor. 

def ice_cream_shop(flavors, favorite) 

  return false if flavors.empty? 
  return true if flavors.last == favorite 

  ice_cream_shop(flavors[0...-1], favorite) 
end 


p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
p ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
p ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
p ice_cream_shop([], 'honey lavender')  # => returns false

# Write a function reverse(string) that takes in a string and returns it reversed.

def reverse(string) 

  return '' if string.empty?

  reverse(string[1..-1]) + string[0] 
end

p  reverse("house") # => "esuoh"
p  reverse("dog") # => "god"
p  reverse("atom") # => "mota"
p  reverse("q") # => "q"
p  reverse("id") # => "di"
p  reverse("") # => ""


class Array 
  def deep_dup
  new_array = [] 
  self.each do |ele| 
    if ele.is_a?(Array) 
      new_array << ele.deep_dup 
    else 
      ele 
    end 
  end 
  new_array
  end 

  def dd_map 
    self.map { |el| el.is_a(Array) ? el.dd_map :el }
  end 
end 



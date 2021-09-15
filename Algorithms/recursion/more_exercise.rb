# Problem 1: You have array of integers. Write a recursive solution to find the sum of the integers. 

def sum(array)
  return array[0] if array.length == 1
  return [] if array.empty?
  array[0] + sum(array[1..-1]) 
end 


p sum([1, 3, 5, 9]) 


# Problem 2: You have array of integers. Write a recursive solution to determine whether or not the array contains a specific value. 

def include?(array, target) 
  return false if array.length == 0 
  return true if array.first == target 

  include?(array[1..-1], target) 

end 

p include?([1, 3, 3, 9], 5)
p include?([], 5)
p include?([5], 5)


# Problem 3: You have an unsorted array of integers. Write a recursive solution to count the number of occurrences of a specific value. 

def count_occurrences(array, value) 
  return 0 if array.empty? 

  count = array.first == value ? 1 : 0 
  count + count_occurrences(array[1..-1], value) 
end 

p count_occurrences([1, 3, 3, 9], 3)


# Problem 4: You have array of integers. Write a recursive solution to determine whether or not two adjacent elements of the array add to 12. 

def add_to_twelve(array) 
  return false if array.length <= 1
  return true if array[0] + array[1] == 12 
  add_to_twelve(array[1..-1])
end 

p add_to_twelve([1, 3, 3, 7])
  
# Problem 5: You have array of integers. Write a recursive solution to determine
# if the array is sorted. 

def is_sorted?(array) 
  return true if array.length <= 1 
  return false if array[0] > array[1]
  is_sorted?(array[1..-1])
end 

p is_sorted?([1, 2, 3, 7]) 


# Write a recursive function to reverse a string. Don't use any built-in #reverse methods! 


def reverse(string) 
  return string if string.length <= 1 
  string[-1] +  reverse(string[0..-2]) 
end 

p reverse("elaraby") 

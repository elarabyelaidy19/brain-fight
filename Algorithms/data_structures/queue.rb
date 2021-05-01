
class Queue

  attr_accessor :array

  def initialize 
    @array = [] 
  end 

  def enqueue(ele) 
    array.push(ele)
    ele
  end 
  # remove first element 
  def dequeue
    array.shift
  end 

  def peek
    array.first 
  end 

end 


queue = Queue.new

puts
p queue.enqueue(6)
p queue.enqueue(2)
p queue.enqueue(2)
p queue.enqueue(3)
puts 
p queue.dequeue
puts
p queue.peek 


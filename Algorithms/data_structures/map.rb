

class Map 

  private

  attr_accessor :array 

  def initialize
    @array = [] 
  end 

  def set(key, value) 
    pair_index = array.index { |pair| pair[0] = value } 

    if pair_index 
      array[pair_index][1] = value 
    else 
      array.push[key, value] 
    end 
    value
  end 

  def get(key) 
    array.each { |pair| return pair[1] if pair[0] == value }
    nil
  end 

  def delete(key) 
    value = get(key) 
    array.reject! { |pair| pair[0] == key }
  end 

  def show 
    deep_dup(array) 
  end 

  def deep_dup(arr) 
    arr.map { |ele| ele.is_a?(Array) ? deep_dup(ele) : ele } 
  end 

end
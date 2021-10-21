
#####################################################################
#####################################################################

# https://app.codesignal.com/arcade/intro/level-5/5xPitc3yT3dqS7XkP

def box_blur(image)
  x = image[0].length - 2
  y = image.length - 2
  result = Array.new(y)
  
  for i in 0...y
      result[i] = Array.new(x)
      for j in 0...x
          result[i][j] = image[i][j] + image[i][j+1] + image[i][j+2] +
                    image[i+1][j] + image[i+1][j+1] + image[i+1][j+2] +
                    image[i+2][j] + image[i+2][j+1] + image[i+2][j+2]
          result[i][j] = (result[i][j] / 9).floor
      end
  end
  return result
end 


#####################################################################
#####################################################################
=begin 
https://app.codesignal.com/arcade/intro/level-6/t97bpjfrMDZH8GJhi
Given two cells on the standard chess board, determine whether they have the same color or not.

Example

For cell1 = "A1" and cell2 = "C3", the output should be
chessBoardCellColor(cell1, cell2) = true.

For cell1 = "A1" and cell2 = "H3", the output should be
chessBoardCellColor(cell1, cell2) = false.


=end 
def chessBoardCellColor(cell1, cell2)
  # if ODD && ODD == black 
  # if EVEN && EVEN == black 
  # if ODD & EVEN == white 
  # if EVEN && ODD = white 
  

  determine_color(cell1) == determine_color(cell2)
end

def determine_color(cell)
  hash = {} 
  
  ("A".."H").to_a.each_with_index do |char, idx| 
      hash[char] = idx + 1 
  end 

  color = "white"

  if hash[cell[0]] % 2 == 0 && cell[1].to_i % 2 == 0 ||
         hash[cell[0]] % 2 != 0 && cell[1].to_i % 2 != 0 
      color = "black"
  end 

  color 
end 


#####################################################################
#####################################################################

# https://app.codesignal.com/arcade/intro/level-2/xskq4ZxLyqQMCLshr 

def matrixElementsSum(matrix)
  result = 0
  for i in (0..(matrix[0].size-1))
      for j in (0..(matrix.size-1))
          current = matrix[j][i]
          break if  current == 0
          result += current
      end 
  end
  result
end
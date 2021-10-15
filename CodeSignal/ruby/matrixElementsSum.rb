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

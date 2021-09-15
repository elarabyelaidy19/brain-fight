# https://app.codesignal.com/arcade/intro/level-5/ZMR5n7vJbexnLrgaM 

def mines_weeper(matrix) 
  result = Array.new(matrix.length) { Array.new(matrix[0].length, 0) } 

  matrix.each_with_index do |row, r| 
    row.each_with_index do |col, c| 
      if col then
        (r-1..r+1).each do |r2| 
          next if r2 < 0 || r2 > matrix.length - 1 
          (c-1..c+1).each do |c2| 
            next if c2 < 0 || c2 > row.length -1 
            result[r2][c2] += 1 if !(r2 == r && c2 == c) 
          end 
        end 
      end 
    end 
  end 
  result 
end 


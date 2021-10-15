=begin 
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
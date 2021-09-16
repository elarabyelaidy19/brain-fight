# https://app.codesignal.com/arcade/intro/level-6/mCkmbxdMsMTjBc3Bm

def arrayReplace(array, elemToReplace, substitutionElem)
  for el in (0...array.length) 
      array[el] = substitutionElem if array[el] == elemToReplace 
  end 
  array 
end

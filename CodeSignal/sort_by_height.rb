# https://app.codesignal.com/arcade/intro/level-3/D6qmdBL2NYz49XHwM  

def sort_by_height(arr) 
  len = arr.lenght - 1 
  for i in (0..len) 
    if arr[i] > -1 
      for j in (0..len) 
        if (arr[j] > -1 && arr[j] > arr[i]) 
          arr[j], arr[i] = arr[i], arr[j] 
        end 
      end 
    end 
  end 

  arr 
end 
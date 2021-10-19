
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
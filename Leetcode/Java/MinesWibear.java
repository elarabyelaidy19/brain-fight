// https://app.codesignal.com/arcade/intro/level-5/ZMR5n7vJbexnLrgaM  

class solutin { 

  int[][] MinesWeaber(boolean[][] matrix) { 
    int[][] result = new int [matrix.length][matrix[0].length]; 

    for (int i = 0; i < matrix.length; i++) { 
      for (int j = 0; j < matrix[0].length; j++) {  
        int count = 0; 
        
        // top 
        if (i > 0 && matrix[i-1][j]) count++; 
        // bottom 
        if (i+1 < matrix.length && matrix[i+1][j]) count++; 
        
        // top left 
        if (i > 0 && j > 0 && matrix[i-1][j-1]) count++; 
        // top right  
        if (i > 0 && j+1 < matrix[0].length && matrix[i-1][j+1]) count++;  
        
        // left 
        if (j > 0 && matrix[i][j-1]) count++; 
        // right 
        if (j+1 < matrix[0].length && matrix[i][j+1]) count++; 

        // bottom left 
        if (i+1 < matrix.length && j > 0 && matrix[i+1][j-1]) count++; 
        //bottom right  
        if (i+1 < matrix.length && j+1 < matrix[0].length && matrix[i+1][j+1]) count++; 

        result[i][j] = count;
        
      }
    }
    return result;
  } 
  

 }

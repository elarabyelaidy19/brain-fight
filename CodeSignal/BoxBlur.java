public class BoxBlur { 
  int[][] boxBlur(int[][] image) {
    int row = image.length-2; 
    int col = image[1].length-2; 
    int[][] result = new int[row][col];
    for( row = 0; row < image.length -2; row++) { 
        for (col = 0; col < image[1].length -2; col++) { 
            result[row][col] = (image[row][col] + image[row][col+1] + image[row][col+2] + image[row+1][col] + image[row+1][col+1] + image[row+1][col+2] + image[row+2][col] + image[row+2][col+1] + image[row+2][col+2])/9;
        }
    } 
    return result; 
  }
}



package java;
public class TDArrays {
    // https://app.codesignal.com/arcade/intro/level-5/5xPitc3yT3dqS7XkP
    // BOX BLUR 
    int[][] boxBlur(int[][] image) {
        int[][] result = new int[image.length - 2][image[1].length - 2];
        for (int i = 0; i < image.length - 2; i++) {
            for (int j = 0; j < image[1].length - 2; j++) {
                result[i][j] = (image[i][j] + image[i][j + 1] + image[i][j + 2] + image[i + 1][j] + image[i + 1][j + 1]
                        + image[i + 1][j + 2] + image[i + 2][j] + image[i + 2][j + 1] + image[i + 2][j + 2]) / 9;
            }
        }
        return result;
    }

    // TOW
    int[][] boxBlur2(int[][] image) { 
        int[][] result = new int[image.length-2][image[0].length-2]; 

        for (int i = 1; i<image.length-1; i++) { 
            for (int j = 1; j<image[0].length-1; j++) { 
                result[i-1][j-1] = sum(image,i,j);
            }
        }
        return result;
    }

    int sum(int image[][], int row, int col) { 
        int sum = 0; 

        for (int i = row - 1; i<= row+1; i++) { 
            for(int j = col - 1; j<=col+1;j++) { 
                sum += image[i][j];
            }
        }
        return sum/9;
    }

    // https://app.codesignal.com/arcade/intro/level-6/t97bpjfrMDZH8GJhi

    /* Given two cells on the standard chess board, determine whether they have the same color or not. */
    boolean chessBoardCellColor(String cell1, String cell2) {
        // CHESS BLACK OR WHITE 
        // CELL(0)+CELL(1) == EVEN BLACK 
        // CELL(0)+CELL(1) == ODD   WHITE
    return (cell1.charAt(0) + cell1.charAt(1)) % 2 == (cell2.charAt(0) + cell2.charAt(1)) % 2;
    }

}

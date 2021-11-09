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

    // https://app.codesignal.com/arcade/intro/level-2/xskq4ZxLyqQMCLshr 
    // return the total sum of all rooms that are suitable for the CodeBots (ie: add
    // up all the values that don't appear below a 0).
    int matrixElementsSum(int[][] matrix) {
        int sum = 0; 
        // return sum of col down 
        // move cols down  COL FIRST
        for(int c=0; c<matrix[0].length; c++) { 
            for(int r = 0; r<matrix.length; r++) { 
                            //  Current of the matrix original
                int current = matrix[r][c];
                if (current == 0) {
                    break;
                }
                sum += current;   
            }
        }
    
    
        return sum;
    } 
    /* 
    https://app.codesignal.com/arcade/intro/level-5/ZMR5n7vJbexnLrgaM 
    In the popular Minesweeper game you have a board with some mines and those cells that don't contain a 
    mine have a number in it that indicates the total number of mines in the neighboring cells. */
    int[][] minesweeper(boolean[][] matrix) {
        int[][] arr = new int[matrix.length][matrix[0].length];

        for (int r = 0; r < matrix.length; r++) {
            for (int c = 0; c < matrix[0].length; c++) {
                int counter = 0;
                // top
                if (r > 0 && matrix[r - 1][c])
                    counter++;
                // bottom
                if (r + 1 < matrix.length && matrix[r + 1][c])
                    counter++;
                // left
                if (c > 0 && matrix[r][c - 1])
                    counter++;
                // right
                if (c + 1 < matrix[0].length && matrix[r][c + 1])
                    counter++;
                // top left
                if (r > 0 && c > 0 && matrix[r - 1][c - 1])
                    counter++;
                // top right
                if (r > 0 && c + 1 < matrix[0].length && matrix[r - 1][c + 1])
                    counter++;
                // bottom left
                if (r + 1 < matrix.length && c > 0 && matrix[r + 1][c - 1])
                    counter++;
                // bottom right
                if (r + 1 < matrix.length && c + 1 < matrix[0].length && matrix[r + 1][c + 1])
                    counter++;

                arr[r][c] = counter;
            }
        }
        return arr;
    }


    // https://app.codesignal.com/arcade/intro/level-9/6M57rMTFB9MeDeSWo 
    // Given the positions of a white bishop and a black pawn on the standard chess
    // board, determine whether the bishop can capture the pawn in one move.
    boolean bishopAndPawn(String bishop, String pawn) {
        return Math.abs(bishop.charAt(0) - pawn.charAt(0)) == Math.abs(bishop.charAt(1) - pawn.charAt(1));
    }

}

class SearchMatrix {
    public int[] searchMatrix(int[][] matrix, int target) {
        int rows = matrix.length; 
        int cols = matrix[0].length; 
        int[] result = new int[2]; 

        for(int i = 0; i < rows; i++) { 
            for(int j = 0; j < cols; j++) { 
                if (matrix[i][j] == target) return new int[]{i, j};
            }
        } 
        return result;
    } 

    public static void main(String[] args) {
        SearchMatrix sol = new SearchMatrix();
        int[][] matrix = {{1, 9, 0}, {3, 4, 5}, {4, 2, 3}};
        int[] result = sol.searchMatrix(matrix, 4);
        System.out.println(result[0] + " " + result[1]);
    }
}
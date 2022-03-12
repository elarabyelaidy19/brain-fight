public class Arrays { 

    // Given an array of integers, replace all the occurrences of elemToReplace with substitutionElem. 
    int[] solution(int[] inputArray, int elemToReplace, int substitutionElem) { 
        return Arrays.stream(inputArray).map(i -> i == elemToReplace ? substitutionElem : i).toArray(); 
    }


    // swap the first and last elements of the array
    int[] solution(int[] a) {
        int n = a.length - 1; 
        if(n > 0) 
            a[0] = a[0] ^ a[n] ^ (a[n] = a[0]); 
        return a; 
    }

    int[] swapLastFirst(int[] a) { 
        if(a.length == 0) 
            return a;

        int n = a.length - 1; 
        int temp = a[0]; 
        a[0] = a[n]; 
        a[n] = temp; 
        return a;
    }


    // concatenate two arrays
    int[] solution(int[] a, int[] b) {
        int[] c = new int[a.length + b.length]; 
        System.arraycopy(a, 0, c, 0, a.length); 
        System.arraycopy(b, 0, c, a.length, b.length); 
        return c; 
    } 

    int[] concat(int[] a, int[] b) { 
        int[] c = new int[a.length + b.length]; 
        for(int i = 0; i < a.length + b.length; i++) { 
            c[i] = i < a.length ? a[i] : b[i - a.length]; 
        }
        return c;
    }




}
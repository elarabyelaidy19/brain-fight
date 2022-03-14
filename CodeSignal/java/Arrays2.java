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


    // delete part of an array 
    int[] solution(int[] inputArray, int l, int r) {
        int[] res = new int[inputArray.length - (r-l) - 1]; 
        int j = 0; 
        for(int i = 0; i < inputArray.length; i++) { 
            if(i < l || r < i) {
                res[j] = inputArray[i]; 
                j++;
            }
        } 
        return res;
        
        
    }

    int[] remove(int[] a, int l, int r) { 
        int[] res = new int[a.length - (r-l) - 1]; 
        System.arraycopy(a, 0, res, 0, l); 
        System.arraycopy(a, r+1, res, l, a.length - r - 1); 
        return res;
    }




    // somoothe array array that first element is the same as the last element and the middle if odd, and 
    // equal the sum of the middle element if even. 
    boolean solution(int[] arr) {
        int middle = arr.length % 2 == 0 ? arr[arr.length / 2] + arr[(arr.length / 2) - 1] : arr[arr.length / 2]; 
        return middle == arr[0] && middle == arr[arr.length - 1];   
    }



    // replace middle element with the sum of the middle two elements if even  

    int[] replaceMiddle(int[] arr) { 
        if(arr.length % 2 == 1) 
            return arr; 
        
        int[] res = new int[arr.length - 1]; 
        for(int i = 0; i < arr.length/2; i++) { 
            res[i] += arr[i];  
            res[res.length - 1 - i] += arr[arr.length - 1 - i];   
        }
        return res;
    }





}
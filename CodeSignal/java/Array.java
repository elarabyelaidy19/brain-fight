package java;

public class Array {  
  /* 
  # https://app.codesignal.com/arcade/intro/level-4/xvkRbxYkdHdHNCKjg 
  =begin 
  You are given an array of integers. On each move you are allowed to increase 
  exactly one of its element by one. Find the minimal number of moves required 
  to obtain a strictly increasing sequence from the input.
  
  Example
  
  For inputArray = [1, 1, 1], the output should be
  arrayChange(inputArray) = 3. 
  
  [1, 2 (+1), 3 (+2) ] 1+2 == 3
 */

  int arrayChange(int[] a) { 
    int result = 0; 
    int mov;
    for(int i=0; i < a.length - 1; i++) { 
      if (a[i] >= a[i+1]) { 
        mov = a[i] - a[i+1] + 1; 
        result += mov; 
        a[i+1] += mov; 
      }
    }
    return result;

  }
/*    
https://app.codesignal.com/arcade/intro/level-4/xYXfzQmnhBvEKJwXP  
Two arrays are called similar if one can be obtained from another by swapping at 
most one pair of elements in one of the arrays.

Given two arrays a and b, check whether they are similar.
*/
  boolean isSimilar(int[] a, int[] b ) { 

    int sum = 0, s1 = 1, s2 = 1; 

    for (int i = 0; i < a.length; i++) { 
      if (a[i] != b[i]) 
        sum++; 
      s1 *= a[i];
      s2 *= b[i];
    }

    return sum <= 2  && s1 == s2; 
  }
}
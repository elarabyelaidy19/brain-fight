package java;

public class Array {  
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
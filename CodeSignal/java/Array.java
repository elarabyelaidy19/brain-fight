package java;

import java.util.ArrayList;
import java.util.List;

public class Array {  
  /* 
  # https://app.codesignal.com/arcade/intro/level-4/xvkRbxYkdHdHNCKjg 
  =begin 
  You are given an array of integers. On each move you are allowed to increase 
  exactly one of its element by one. Find the minimal number of moves required 
  to obtain a strictly increasing sequence from the input.
  
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

  // https://app.codesignal.com/arcade/intro/level-2/xzKiBHjhoinnpdh6m  
  /* Given an array of integers, find the pair of adjacent elements that
  has the largest product and return that product. */
  int adjacentElementsProduct(int[] inputArray) {
    int max = -10^1000; 
    
    for (int i = 1; i < inputArray.length; i++) { 
        int product = (inputArray[i-1] * inputArray[i]);
        System.out.print(product);
        max = Math.max(max, product);
    }
    return max;
  }

  /* 
  Given an array of strings, return another array containing all of its longest strings
  */

  String [] allLongestString(String[] a) { 
    List <String> longest = new ArrayList<String>(); 
    int max = 0; 

    for (int i = 0; i < a.length; i++) { 
      if (a[i].length() > max)
        max = a[i].length();
    }

    for (int i = 0 ; i<a.length ; i++) { 
      if (a[i].length() == max) 
        longest.add(a[i]);
    }

    String [] reulst = longest.toArray(new String[longest.size()]);

    return reulst;
  } 
}
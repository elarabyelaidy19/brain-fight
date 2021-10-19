package java;

import java.util.ArrayList;
import java.util.List;

public class Arrays {  
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
/* 
  https://app.codesignal.com/arcade/intro/level-2/2mxbGwLzvkTCKAJMG 
  Given a sequence of integers as an array, determine whether it is possible 
  to obtain a strictly increasing sequence by removing no more than one element from the array. */
  boolean almostIncreasingSequence(int[] sequence) {
    int max = -10 ^ 100;
    int secondMax = -10 ^ 100;
    int count = 0;
    for (int i = 0; i < sequence.length; i++) {
      if (sequence[i] > max) {
        secondMax = max;
        max = sequence[i];
      } else if (sequence[i] > secondMax) {
        max = sequence[i];
        count += 1;
      } else {
        count += 1;
      }
    }
    return count <= 1;

  } 

  boolean almostIncreasingSequence2(int[] sequence) {
    int count = 0;
    for (int i = 0; i < sequence.length; i++) {
        if(sequence[i] - sequence[i+1] >= 0) 
          count += 1;

          if ((i-1 >= 0 && i+2 <= sequence.length - 1) 
              && (sequence[i-1] - sequence[i+1] >= 0) 
              && (sequence[i] - sequence[i+2] >= 0)) { 
          
                return false; 
          }
        }
    return count <= 1;

  } 

  int[] alternatingSums(int[] a) {
    //https://app.codesignal.com/arcade/intro/level-4/cC5QuL9fqvZjXJsW9
    // int team1 = 0;
    // int team2 = 0;
    // List <Integer> sums = new ArrayList<Integer>();
    int[] sums = { 0, 0 };
    for (int i = 0; i < a.length; i++) {
      if (i % 2 == 0) {
        sums[0] += a[i];
      } else {
        sums[1] += a[i];
      }
    }
    return sums;
  }

  


  
}
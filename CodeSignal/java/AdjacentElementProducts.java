package java;

public class AdjacentElementProducts { 
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
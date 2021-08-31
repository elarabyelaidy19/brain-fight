/* 
https://leetcode.com/problems/rectangle-overlap/
*/ 


package Java;

public class RectangleOverlap { 
  public boolean isOverlap(int[] rec1, int[] rec2) { 
    return (rec1[2] > rec2[0] && rec2[2] > rec1[0] && rec1[1] < rec2[3] && rec1[3] > rec2[1]);
  }
  
}



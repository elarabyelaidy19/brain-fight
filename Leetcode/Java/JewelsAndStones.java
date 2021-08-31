/* 
https://leetcode.com/problems/jewels-and-stones/ 
*/

package Java;

import java.util.HashSet;

public class JewelsAndStones {
  public int numOfJewelsInStones(String jewels, String stones) { 
    int result = 0; 
    HashSet<Character> set = new HashSet<>(); 

    for (int i = 0; i < jewels.length(); i++) { 
      set.add(jewels.charAt(i));
    } 

    for (int i = 0; i < stones.length(); i++) { 
      if (set.contains(stones.charAt(i))) result++; 
    }
  return result;
  }
}

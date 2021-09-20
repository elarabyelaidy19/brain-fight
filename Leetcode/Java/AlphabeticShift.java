/* 
Given a string, your task is to replace each of its characters by the next one in the English alphabet; i.e. replace a with b, replace b with c, etc (z would be replaced by a).
Example
For inputString = "crazy", the output should be alphabeticShift(inputString) = "dsbaz".
*/

public class AlphabeticShift { 
  String alphabeticShift(String inputString) {
    char[] chars = inputString.toCharArray(); 
    
    for (int i = 0; i < chars.length; i++) { 
        if (inputString.charAt(i) == 'z') 
            chars[i] = 'a'; 
        else 
            chars[i]++; 
    } 
    return new String(chars);

  }  
}

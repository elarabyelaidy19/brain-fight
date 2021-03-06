package java;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;


public class Strings {
  
    /*https://app.codesignal.com/arcade/intro/level-6/PWLT8GBrv9xXy4Dui 
    Given a string, your task is to replace each of its characters by the next one in the English alphabet;
    i.e. replace a with b, replace b with c, etc (z would be replaced by a). */

    String alphabeticShift(String inputString) {
        // Convert string to array of characters
        char[] chars = inputString.toCharArray();

        for (int i = 0; i < chars.length; i++) {
            if (chars[i] == 'z') {
                chars[i] = 'a';
            } else {
                chars[i]++;
            }
        } 
        //  Casting new
        return new String(chars);
    }
/* 
    https://app.codesignal.com/arcade/intro/level-3/JKKuHJknZNj4YGL32
    Given two strings, find the number of common characters between them. */
    int commonCharacterCount(String s1, String s2) {
        int count = 0;
        int[] a = new int[26];
        int[] b = new int[26];

        for (int i = 0; i < s1.length(); i++) {
            // Freq Array
            a[s1.charAt(i) - 'a']++;
        }
        for (int j = 0; j < s2.length(); j++) {
            // Freq array
            b[s2.charAt(j) - 'a']++;
        }

        for (int k = 0; k < 26; k++) {
            count += Math.min(a[k], b[k]);
        }

        return count;

    }
/* 
    https://app.codesignal.com/arcade/intro/level-5/veW5xJednTy4qcjso 
    
    Given a string, find out if it satisfies the IPv4 address naming rules. */
    
    boolean isIPv4Address(String inputString) {
        String[] splStrings = inputString.split("[.]");

        if (splStrings.length < 4)
            return false;

        for (String s : splStrings) {
            if (s.isEmpty()) {
                return false;
            }
            if (!s.matches("[0-9]{1,3}")) {
                return false;
            }
            // parse numbers in String 
            int number = Integer.parseInt(s);
            if ((number < 0 || number > 255)) {
                return false;
            }
        }

        return true;
    }
    /* 
    https:// app.codesignal.com/arcade/intro/level-4/Xfeo7r9SBSpo3Wico 

    Given a string, find out if its characters can be rearranged to form a palindrome. */ 

    // Using Freq Array
    boolean palindromeRearranging(String inputString) {
        int[] freqArr = new int[26];

        for (int i = 0; i < inputString.length(); i++) {
            freqArr[inputString.charAt(i) - 'a']++;
        }

        int count = 0;
        for (int i = 0; i < freqArr.length; i++) {
            if (freqArr[i] % 2 != 0)
                count++;
        }
        return count <= 1;
    }

    // Using Set 
    boolean palindromeRearranging2(String s) { 
        Set <Character> chars = new HashSet<Character>(); 

        for(int i = 0; i<s.length(); i++) { 
            if(chars.contains(s.charAt(i))) 
                chars.remove(s.charAt(i)); 
            else 
                chars.add(s.charAt(i)); 
        }

        return chars.size() <= 1 ? true : false; 
    }


   /* https://app.codesignal.com/arcade/intro/level-3/9DgaPsE2a7M6M2Hu6 
    
    Write a function that reverses characters in (possibly nested) parentheses in the input string.
    Input strings will always be well-formed with matching ()s.  */
    String reverseInParentheses(String inputString) {
        int start = inputString.lastIndexOf("(");
        int end = inputString.indexOf(")", start);
        if (start == -1 || end == -1 || start > end)
            return inputString; 
        
        return reverseInParentheses(inputString.substring(0, start)
                + new StringBuilder(inputString.substring(start + 1, end)).reverse().toString()
                + inputString.substring(end + 1));
    } 
    
    /* 
    https://app.codesignal.com/arcade/intro/level-6/6Wv4WsrsMJ8Y2Fwno 
    Correct variable names consist only of English letters, digits and underscores and they can't start with a digit. */
    boolean variableName(String name) {
        return name.matches("[a-zA-z_][a-zA-Z0-9_]*");
    }

    // https:// app.codesignal.com/arcade/intro/level-8/rRGGbTtwZe2mA8Wov 
    // Find the leftmost digit that occurs in a given string.

    char firstDigit(String s) {  
        char[] chars = s.toCharArray(); 

        for(char c : chars) { 
            if(Character.isDigit(c)) 
                return c;
        }
        return ' ';
    }

    // https:// app.codesignal.com/arcade/intro/level-8/8N7p3MqzGQg5vFJfZ
    // Given a string, find the number of different characters in it.
    
    int differentSymbolsNaive(String s) {
        List<Character> res = new ArrayList<Character>();
        for (int i = 0; i < s.length(); i++) {
            if (!res.contains(s.charAt(i)))
                res.add(s.charAt(i));
        }
        return res.size();
    }

    int differentSymbolsNaive2(String s) { 
        Set<Character> set = new HashSet<>();
        char[] chars = s.toCharArray(); 

        for(char c : chars) { 
            set.add(c);
        }
        return set.size();
    }

    int differentSymbolsNaive3(String s) { 
        return (int) s.chars().distinct().count();
    }


    // https://app.codesignal.com/arcade/intro/level-9/AACpNbZANCkhHWNs3 
    // Given a string, output its longest prefix which contains only digits.
    String longestDigitsPrefix(String inputString) {
        String res = "";
        for (int i = 0; i < inputString.length(); i++) {
            if (Character.isDigit(inputString.charAt(i)))
                res += inputString.charAt(i);
            else
                break;
        }
        return res;

    } 

    

}

package java;

import java.util.HashSet;
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


}

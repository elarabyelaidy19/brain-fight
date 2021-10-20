package java;

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



}

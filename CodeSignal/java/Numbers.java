package java; 

class Numbers {  
    // https://app.codesignal.com/arcade/intro/level-6/6cmcmszJQr6GQzRwW 
    /* Check if all digits of the given integer are even. */
    boolean evenDigitsOnly(int n) {

        if (n == 0)
            return true;
        if (n % 2 != 0)
            return false;

        return evenDigitsOnly(n / 10);

    } 

    boolean evenDigitsOnly2(int n) {
        
        while(n != 0) { 
            if (n%2 != 0) { 
                return false;
            }
            n /=10;
        }
        return true;

    }    
    /* 
    https:// app.codesignal.com/arcade/intro/level-3/3AdBC97QNuhF6RwsQ
    
    A ticket number is considered lucky if the sum of the first half of the digits is equal to the sum of the second half.
    Given a ticket number n, determine if it's lucky or not. */
    boolean isLucky(int n) {
        String number = Integer.toString(n);

        int leftHalf = 0;
        int rightHalf = 0;
        int len = number.length();

        for (int i = 0; i < len; i++) {
            if (i < len / 2) {
                leftHalf += number.charAt(i);
            } else {
                rightHalf += number.charAt(i);
            }
        }

        return leftHalf == rightHalf;
    }

    boolean isLucky2(int n) {
        String number = n + "";

        int sum = 0;

        for (int i = 0; i < number.length() / 2; i++) {
            sum += (number.charAt(i) - number.charAt(number.length() - 1 - i));
        }

        return sum == 0;
    }

}
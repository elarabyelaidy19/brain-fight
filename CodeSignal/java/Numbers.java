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

}
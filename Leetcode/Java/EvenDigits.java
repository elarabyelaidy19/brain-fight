class solutions { 
  boolean evenDigitsOnly(int n) {
    while (n > 0) { 
        if (n % 2 == 1) return false; 
         n /= 10; 
    }
    return true; 
  } 

  boolean evenDigitsOnly2(int n) {  
    if (n == 0) 
      return true; 

    if (n % 2 != 0)  
      return false; 
    
    return evenDigitsOnly2(n/10);

  } 
  
}




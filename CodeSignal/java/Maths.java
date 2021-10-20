package java;

public class Maths { 
    // https://app.codesignal.com/arcade/intro/level-7/vExYvcGnFsEYSt8nQ 
    // 
    int circleOfNumbers(int n, int firstNumber) {
        return (firstNumber + n / 2) % n;
    }

    int circleOfNumbers2(int n, int firstNumber) {
        int result = (firstNumber + n / 2); 
        return result < n ? result : result - n;
    }
    
}

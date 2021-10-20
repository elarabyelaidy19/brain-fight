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


    // https:// app.codesignal.com/arcade/intro/level-7/8PxjMSncp9ApA4DAb
    int depositProfit(double deposit, double rate, double threshold) {
        // int increaing = deposit + (deposite*(rate/ 100));
        // convert int to double or casting 
        int year = 0;
        double rateInc = rate / 100;
        while (deposit < threshold) {
            deposit += (deposit * rateInc);
            year += 1;
        }

        return year;
    }
    
    int depositProfit2(int deposit, int rate, int threshold) {
        return (int) Math.ceil(Math.log((double) threshold / deposit) / Math.log(1 + (rate / 100.0)));
    }

}

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
            deposit += (deposit * rateInc); // deposite *= (1 + rate)
            year += 1;
        }

        return year;
    }

    int depositProfit2(int deposit, int rate, int threshold) {
        return (int) Math.ceil(Math.log((double) threshold / deposit) / Math.log(1 + (rate / 100.0)));
    }
    
    /* 
    https:// app.codesignal.com/arcade/intro/level-2/yuGuHvcCaFCKk56rJ
    Below we will define an n-interesting polygon. Your task is to find the area of a polygon for a given n. 
    */
    int shapeArea(int n) {
    return n*n + (n-1)*(n-1);
    } 

    /* https:// app.codesignal.com/arcade/intro/level-9/xHvruDnQCx7mYom3T
    Given an integer desiredHeight, your task is to find how many days it'll take for the plant to reach this height. 
    */
    int growingPlant(int upSpeed, int downSpeed, int desiredHeight) {
        int days = 0;
        int value = 0;

        while (desiredHeight > value) {
            value += upSpeed;
            days += 1;
            if (value >= desiredHeight)
                return days;
            value -= downSpeed;
        }
        return days;
    }


    // https://app.codesignal.com/arcade/intro/level-9/hoLtYWbjdrD2PF6yo
    // Let's define digit degree of some positive integer as the number of times we
    // need to replace this number with the sum of its digits until we get to a one
    // digit number.
    int digitDegree(int n) {
        if (n < 10)
            return 0;
        int num = 0;
        while (n != 0) {
            num += n % 10;
            n /= 10;
        }
        return 1 + digitDegree(num);
    }


    // 
    /* # square digit sum every element is element is equal to the sum of squared digits of the previous element.  
    # The sequence ends once an element that has already been in the sequence appears again. 
    */ 

    int solution(int a) {
        int count=1,b=a;
        ArrayList<Integer> arr = new ArrayList<>();
        arr.add(a);
        while(true){
            int c=0;count++;
            while(b>0){
                c+=(b%10)*(b%10);  
                b/=10;
            }
            if(arr.contains(c)){
                break;
            }
            else{
                arr.add(c);
                b=c;
            }
        }
        return count;
    }

}

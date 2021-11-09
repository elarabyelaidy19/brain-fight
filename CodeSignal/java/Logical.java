package java;

public class Logical { 
    /* https://app.codesignal.com/arcade/intro/level-5/g6dc9KJyxmFjB98dL
    Call two people equally strong if their strongest arms are equally strong 
    (the strongest arm can be both the right and the left), and so are their weakest arms.
     */
    boolean areEquallyStrong(int yourLeft, int yourRight, int friendsLeft, int friendsRight) {

        return ((yourLeft == friendsLeft && yourRight == friendsRight)
                || (yourRight == friendsLeft && friendsRight == yourLeft));

    }

    // https://app.codesignal.com/arcade/intro/level-9/r9azLYp2BDZPyzaG2
    int knapsackLight(int value1, int weight1, int value2, int weight2, int maxW) {
        int sumValue = value1 + value2;
        int sumWeight = weight1 + weight2;
        int maxValue = Math.max(value1, value2);
        if (weight1 > maxW && weight2 > maxW)
            return 0;
        if (maxW >= sumWeight)
            return sumValue;
        if (weight2 > maxW)
            return value1;
        if (weight1 > maxW)
            return value2;
        return maxValue;
    }
    
}

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
    
}

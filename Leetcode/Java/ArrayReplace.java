// https://app.codesignal.com/arcade/intro/level-6/mCkmbxdMsMTjBc3Bm

public class ArrayReplace { 
  int[] arrayReplace(int[] inputArray, int elemToReplace, int substitutionElem) {
    for(int i = 0; i < inputArray.length; i++) {  
        if (inputArray[i] == elemToReplace) 
            inputArray[i] = substitutionElem; 
        else  
            continue;
    } 
    return inputArray; 
  }
}

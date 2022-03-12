public class Arrays { 

    // Given an array of integers, replace all the occurrences of elemToReplace with substitutionElem. 
    int[] solution(int[] inputArray, int elemToReplace, int substitutionElem) { 
        return Arrays.stream(inputArray).map(i -> i == elemToReplace ? substitutionElem : i).toArray(); 
    }

    
}
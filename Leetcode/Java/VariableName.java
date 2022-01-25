 /* 

Correct variable names consist only of English letters, digits and underscores and they can't start with a digit.
Check if the given string is a correct variable name.

Example
For name = "var_1__Int", the output should be
variableName(name) = true;
For name = "qq-q", the output should be
variableName(name) = false;
For name = "2w2", the output should be
variableName(name) = false.
 
*/

public class VariableName { 
  boolean variableName(String name) {
    int count = 0;
    Boolean flag = false;

    for(int i = 0; i < name.length(); i++){
        char c = name.charAt(i);
        if(i == 0) if((c >= '0' && c <= '9')) break;
        if((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9') || c == '_') count++;
    }
    if(count == name.length()) flag = true;
    return flag; 
  }

  boolean variableName2(String name) {
    return name.matches("[a-zA-Z_][a-zA-Z0-9_]*"); 
  } 
}


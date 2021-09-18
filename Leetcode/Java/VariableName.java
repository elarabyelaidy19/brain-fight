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



 
  
}


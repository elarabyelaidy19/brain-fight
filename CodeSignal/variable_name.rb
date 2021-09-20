=begin
Correct variable names consist only of English letters, digits and underscores and they can't start with a digit.
Check if the given string is a correct variable name.

Example
For name = "var_1__Int", the output should be
variableName(name) = true;
For name = "qq-q", the output should be
variableName(name) = false;
For name = "2w2", the output should be
variableName(name) = false.
=end


def variable_name(name) 
  return false if /\d/.match(name[0]) 

  name.each_char do |c| 
    return false unless /[a-zA-Z]/.match(c) || /\d/.match(c) || c == "_" 
  end 
  true 
end 
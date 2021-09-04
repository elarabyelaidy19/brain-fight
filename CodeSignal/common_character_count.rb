# https://app.codesignal.com/arcade/intro/level-3/JKKuHJknZNj4YGL32 

def common_char_count(s1, s2) 
  count = 0 

  s1.each_char do |c| 
    cout += 1 if s2.include?(c) && s2[c] = "" 
  end 

  count 
end 
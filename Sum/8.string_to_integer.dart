class Solution{
  int myAtoi(String s){
    s = s.trim();
    if (s.isEmpty) return 0;
    
    int i = 0;
    int sign = 1;
    int result = 0;
    
    if(s[i] == '-' || s[i] == '+'){
      sign = (s[i] == '-') ? -1 : 1;
      i++;
    }
    
    // codeUnitAt এর কাজ হচ্ছে Unicode এর মান বের করা 
    while (i < s.length && s[i].codeUnitAt(0) >= '0'.codeUnitAt(0) && s[i].codeUnitAt(0) <= '9'.codeUnitAt(0)) { // if (c.codeUnitAt(0) >= 48 && c.codeUnitAt(0) <= 57)
      
      // '7' → 55 (ASCII) -> s[i].codeUnitAt(0)
      // '0' → 48 ->  '0'.codeUnitAt(0)
      
      int digit = s[i].codeUnitAt(0) - '0'.codeUnitAt(0); // digit = 55 - 48 = 7 → ✅ digit 7
      
      // Check for overflow (32-bit signed int)
      if (result > (2147483647 - digit) ~/ 10) {
        return (sign == -1) ? -2147483648 : 2147483647;
      }
      
      result = result * 10 + digit;
      i++;
    }
    
    return result * sign;
  }
}

// void main(){
//   final s = Solution();
//   final result = s.myAtoi(" -1337c0d3");
  
//   print(result);
// }
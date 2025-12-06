class Solution{
  bool isPalindrome(int x){
    if(x < 0){
      return false;
    }

    int original = x;
    int rev = 0;

    while(x != 0){
      int digit = x % 10;
      x ~/= 10;

      rev = rev * 10 + digit;
    }

    return original == rev;
  }
}

void main() {
  Solution s = Solution();
  print(s.isPalindrome(121));   // true
  print(s.isPalindrome(-121));  // false
  print(s.isPalindrome(10));    // false
}


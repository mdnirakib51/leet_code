// Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

// Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

// Example 1:

// Input: x = 123
// Output: 321
// Example 2:

// Input: x = -123
// Output: -321
// Example 3:

// Input: x = 120
// Output: 21

void main(){
  final solution = Solution();
  final result = solution.reverse(-321);

  print(result);
}

class Solution{
  int reverse(int x){
    int sign = x < 0 ? -1 : 1;
    int num = x.abs();
    int rev = 0;

    while(num != 0){
      int digit = num % 10; // modulus operator
      num ~/= 10; // integer division operator

      if(rev > (2147483647 - digit) ~/ 10){
        return 0;
      }

      rev = rev * 10 + digit;
    }
    return rev * sign;
  }
}

// class Solution{
//   int reverse(int x){
//     int sign = x < 0 ? -1 : 1;
//     int num = x.abs();
//     int rev = 0;

//     while (num != 0) {
//       int digit = num % 10;
//       num ~/= 10;

//       if(rev > (2147483647 - digit) ~/10){
//         return 0;
//       }

//       rev = rev * 10 + digit;
//     }
//     return rev * sign;
//   }
// }
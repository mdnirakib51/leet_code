


// class Solution {
//   String longestPalindrome(String s) {
//     if (s.length < 2) return s;

//     int start = 0, end = 0;

//     for (int i = 0; i < s.length; i++) {
//       // Odd length palindrome
//       var len1 = _expandFromCenter(s, i, i);
//       // Even length palindrome
//       var len2 = _expandFromCenter(s, i, i + 1);

//       var len = len1 > len2 ? len1 : len2;

//       if (len > end - start) {
//         start = i - (len - 1) ~/ 2;
//         end = i + len ~/ 2;
//       }
//     }

//     return s.substring(start, end + 1);
//   }

//   int _expandFromCenter(String s, int left, int right) {
//     while (left >= 0 && right < s.length && s[left] == s[right]) {
//       left--;
//       right++;
//     }
//     return right - left - 1; // length of palindrome
//   }
// }

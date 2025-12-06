
// // nums1 = [1, 3, 8]  
// // nums2 = [7, 9, 10, 11]

// class Solution {
//   double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
//     if(nums1.length > nums2.length){ // -> 3 > 4
//       return findMedianSortedArrays(nums2, nums1);
//     }

//     int m = nums1.length;
//     int n = nums2.length;
//     int low = 0, high = m;
    
//     while (low <= high) {
//       int partitionX = (low + high) ~/ 2; // nums1 এর কাট পজিশন
//       int partitionY = (m + n + 1) ~/ 2 - partitionX; // nums2 এর কাট পজিশন

//       // Partition এর বামপাশের max এবং ডানপাশের min বের করব
//       int maxLeftX = (partitionX == 0) ? -2147483648 : nums1[partitionX - 1];
//       int minRightX = (partitionX == m) ? 2147483647 : nums1[partitionX];

//       int maxLeftY = (partitionY == 0) ? -2147483648 : nums2[partitionY - 1];
//       int minRightY = (partitionY == n) ? 2147483647 : nums2[partitionY];

//       // সঠিক partition কিনা চেক
//       if (maxLeftX <= minRightY && maxLeftY <= minRightX) {
//         // মোট length যদি even হয়
//         if ((m + n) % 2 == 0) {
//           return ( (maxLeftX > maxLeftY ? maxLeftX : maxLeftY) +
//                    (minRightX < minRightY ? minRightX : minRightY) ) / 2.0;
//         } 
//         // মোট length যদি odd হয়
//         else {
//           return (maxLeftX > maxLeftY ? maxLeftX : maxLeftY).toDouble();
//         }
//       } 
//       // Partition shift করব
//       else if (maxLeftX > minRightY) {
//         high = partitionX - 1; // বামদিকে সরাও
//       } else {
//         low = partitionX + 1; // ডানদিকে সরাও
//       }
//     }

//     throw Exception("Input arrays are not sorted");
//   }
// }

// void main(){
//   List<int> nums1 = [1, 3, 8];
//   List<int> nums2 = [7, 9, 10, 11];
//   final s = Solution();

//   final result = s.findMedianSortedArrays(nums1, nums2);
//   print("Result: $result");
// }


class Solution{
  int jump(List<int> nums){

    int jumps = 0;
    int currentEnd = 0;
    int farthest = 0;

    for(int i = 0; i < nums.length - 1; i++){

      farthest = farthest > (i + nums[i]) ? farthest : i + nums[i];

      if(i == nums[i]){
        jumps++;
        currentEnd = farthest;
      }
    }
    return jumps;
  }
}

// class Solution {
//   int jump(List<int> nums) {
//     int jumps = 0;
//     int currentEnd = 0;
//     int farthest = 0;

//     int lastStart = 0; // last jump range start
//     int lastEnd = 0;   // last jump range end

//     for (int i = 0; i < nums.length - 1; i++) {
//       farthest = farthest > i + nums[i]
//           ? farthest
//           : i + nums[i];

//       if (i == currentEnd) {
//         jumps++;
//         lastStart = currentEnd; // আগের end = last start
//         currentEnd = farthest;
//         lastEnd = currentEnd;   // নতুন end
//       }
//     }

//     // 🔹 last jump list print
//     print("Last jump index range: $lastStart to $lastEnd");
//     print("Last jump elements: ${nums.sublist(lastStart, lastEnd + 1)}");

//     return jumps;
//   }
// }

// void main() {
//   print("Total jumps: ${Solution().jump([2, 3, 1, 1, 4, 2, 3, 1, 1, 4])}");
// }

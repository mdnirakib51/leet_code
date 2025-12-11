// nums = [4,5,6, 7 ,0,1,2]
// target = 0

class Solution {
  int search(List<int> nums, int target) {
    int left = 0;
    int right = nums.length - 1;
    
    while(left <= right){
      int mid = (left + right) ~/2;

      if(nums[mid] == target){
        return mid;
      }

      if(nums[left] <= nums[mid]){
        if(nums[left] <= target && target < nums[mid]){
          right = mid - 1;
        } else{
          left = mid + 1;
        }
      } else{
        if(nums[mid] <= target && target < nums[right]){
          left = mid - 1;
        } else{
          right = mid + 1;
        }
      }
    }

    return -1;
  }
}

void main(){
  final s = Solution();
  final result = s.search([4,5,6, 7 ,0,1,2], 2);

  print(result);
}

// =====/> Iteration 1 /<====
// mid = (0 + 6) ~/ 2 = 3 → nums[mid] = 7

// nums[mid] == target? → 7 == 0 ❌

// Check left..mid sorted? nums[left] <= nums[mid] → 4 <= 7 → true
// → left..mid sorted segment = [4,5,6,7]

// Is target in [nums[left], nums[mid]) ? → 4 <= 0 < 7 → false
// → target ওই sorted অংশে নেই → search ডান দিকে

// Update: left = mid + 1 = 4, right = 6


// =====/> Iteration 2 /<====
// mid = (4 + 6) ~/ 2 = 5 → nums[mid] = 1

// nums[mid] == target? → 1 == 0 ❌

// Check left..mid sorted? nums[left] <= nums[mid] → 0 <= 1 → true
// → left..mid sorted segment = [0,1]

// Is target in [nums[left], nums[mid]) ? → 0 <= 0 < 1 → true
// → target আছে বামzijdে

// Update: right = mid - 1 = 4, left stays 4

// =====/> Iteration 3 /<====
// mid = (4 + 4) ~/ 2 = 4 → nums[mid] = 0

// nums[mid] == target? → 0 == 0 → true

// Return mid = 4

// Final result: 4 ✅ (target found at index 4)

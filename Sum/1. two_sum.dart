// 1. Two Sum
// 
// Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
// 
// You may assume that each input would have exactly one solution, and you may not use the same element twice.
// 
// You can return the answer in any order.
// 
// Example 1:
// Input: nums = [2,7,11,15], target = 9
// Output: [0,1]
// Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
// 
// Example 2:
// Input: nums = [3,2,4], target = 6
// Output: [1,2]
// 
// Example 3:
// Input: nums = [3,3], target = 6
// Output: [0,1]



class Solution{
    List<int> twoSum(List<int> nums, int target){
        Map<int, int> numMap = {};

        for(int i = 0; i < nums.length; i++){
          int num = nums[i];

          int diff = target - num;
          if(numMap.containsKey(diff)){
            print("L1-${numMap[diff]!}");
            print("L2-${i}");
            return [numMap[diff]!, i];
          }
          
          print("L3-${i}");
          
          numMap[num] = i;
        }
      
      return [];
    }
}

void main(){
  final s = Solution();
  
  final result = s.twoSum([2, 5, 7, 11], 13);
  print(result);
}

// void main(){
//   List<int> numbers = [2, 7, 11, 15];
//   List<int> result = Solution().twoSum(numbers, 22);
//   int? sum;

//   if(result.isNotEmpty){
//     int firstNum = numbers[result[0]];
//     final lastNum = numbers[result[1]];

//     sum = firstNum + lastNum;
//   }

//   print("Sum Keys: $sum");
// }

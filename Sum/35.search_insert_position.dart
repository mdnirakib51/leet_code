class Solution {
  int searchInsert(List<int> nums, int target) {
    int left = 0;
    int right = nums.length - 1;

    while(left <= right){
      int mid = (left + right) ~/ 2;

      if(nums[mid] == target){
        return mid;
      } else if(nums[mid] < target){
        left = mid + 1;
      } else{
        right = mid - 1;
      }
    }

    return left;
  }
}

void main() {
  final s = Solution();
  print( s.searchInsert([1,3,5,6], 5));
  print( s.searchInsert([1,3,5,6], 2));
  print( s.searchInsert([1,3,5,6], 7));
}
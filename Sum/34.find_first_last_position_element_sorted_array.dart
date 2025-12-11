class Solution{
  List<int> searchRange(List<int> nums, int target) {
    int first = findFirst(nums, target);
    int last = findLast(nums, target);

    return [first, last];
  }

  int findFirst(List<int> nums, int target){
    int left = 0;
    int right = nums.length - 1;
    int first = -1;

    while (left <= right){
      int mid = (left + right) ~/ 2;

      if(nums[mid] == target){
        first = mid;
        right = mid - 1;
      } else if(nums[mid] < target){
        left = mid + 1;
      } else{
        right = mid - 1;
      }
    }

    return first;
  }

  int findLast(List<int> nums, int target){
    int left = 0;
    int right = nums.length - 1;
    int last = -1;

    while(left <= right){
      int mid = (left + right) ~/ 2;

      if(nums[mid] == target){
        last = mid;
        left = mid + 1;
      } else if(nums[mid] < target){
        left = mid + 1;
      } else{
        right = mid - 1;
      }
    }

    return last;
  }
}

void main() {
  Solution s = Solution();
  print(s.searchRange([5,7,7,8,8,10], 8));   // [3,4]
  print(s.searchRange([5,7,7,8,8,10], 6));   // [-1,-1]
  print(s.searchRange([], 0));               // [-1,-1]
}

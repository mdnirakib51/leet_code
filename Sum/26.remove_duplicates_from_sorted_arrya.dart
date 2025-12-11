class Solution {
  int removeDuplicates(List<int> nums) {
    if(nums.isEmpty) return 0;

    int i = 0;
    for(int j = 0; j < nums.length; j++){
      if(nums[j] != nums[i]){
        i++;
        nums[i] = nums[j];
      }
    }

    return i + 1;
  }
}

void main(){
  final s = Solution();
  final result = s.removeDuplicates([0,0,1,1,1,2,2,3,3,4]);
  print(result);
}
class Solution {
  List<List<int>> permute(List<int> nums) {
    List<List<int>> result = [];
    List<int> path = [];

    void backtrack(){
      if(path.length == nums.length){
        result.add(List.from(path));
        return;
      }

      for(int i = 0; i < nums.length; i++){
        if(path.contains(nums[i])) continue;

        path.add(nums[i]);

        backtrack();
        path.removeLast();
      }
    }

    backtrack();
    return result;
  }
}

void main(){
  print(Solution().permute([1, 2, 3])); 
}

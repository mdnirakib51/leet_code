
// void main(){
//   print(Solution().combinationSum([2,3,5], 8));
// }

class Solution{
  List<List<int>> combinationSum(List<int> candidates, int target){
    List<List<int>> result = [];
    List<int> path = [];

    void backtrack(int start, int remaining){
      if(remaining == 0){
        result.add(List.from(path));
        return;
      }

      for(int i = start; i < candidates.length; i++){

        if(candidates[i] > remaining) continue;

        path.add(candidates[i]);

        backtrack(i, remaining - candidates[i]);

        path.removeLast();
      }
    }
    
    backtrack(0, target);
    return result;
  }
}

// class Solution {
//   List<List<int>> combinationSum(List<int> candidates, int target) {

//     List<List<int>> result = [];
//     List<int> path = [];

//     void backtrack(int start, int remaining) {

//       // যদি remaining 0 হয় → valid combination
//       if (remaining == 0) {
//         result.add(List.from(path));
//         return;
//       }

//       for (int i = start; i < candidates.length; i++) {

//         // যদি candidate বড় হয় remaining থেকে → skip
//         if (candidates[i] > remaining) continue;

//         // candidate যোগ করা
//         path.add(candidates[i]);

//         backtrack(i, remaining - candidates[i]);

//         // Backtrack
//         path.removeLast();

//         // ===================== Iterations =====================

//         // ---- 1st iteration (i=0, candidate=2) ----
//         // result = [] 
//         // start = 0, remaining = 8
//         // candidates[i] = 2 
//         // path = [2]
//         // remaining = 8 - 2 = 6
//         // backtrack(0, 8) শুরু
//         // result = [2]

//         //   backtrack(0, 6)
//         //   path = [2, 2]
//         //   remaining = 6 - 2 = 4
//         //   backtrack(0, 4) কল

//         //     backtrack(0, 4)
//         //     path = [2, 2, 2]
//         //     remaining = 4 - 2 = 2
//         //     backtrack(0, 2) কল

//         //       backtrack(0, 2)
//         //       path = [2, 2, 2, 2]
//         //       remaining = 2 - 2 = 0
//         //       backtrack(0, 0) কল
//         //       remaining == 0 → result.add([2,2,2,2])
//         //       result = [[2,2,2,2]]
//         //       return

//         //       path.removeLast() → path = [2, 2, 2]
//         //       i=1 (candidate=3), 3 > 2 → skip
//         //       i=2 (candidate=5), 5 > 2 → skip
//         //       loop শেষ, return

//         //     path.removeLast() → path = [2, 2]
//         //     i=1 (candidate=3), remaining=4
//         //     path = [2, 2, 3]
//         //     remaining = 4 - 3 = 1
//         //     backtrack(1, 1) কল

//         //       backtrack(1, 1)
//         //       i=1, 3 > 1 → skip
//         //       i=2, 5 > 1 → skip
//         //       return

//         //     path.removeLast() → path = [2, 2]
//         //     i=2 (candidate=5), 5 > 4 → skip
//         //     return

//         //   path.removeLast() → path = [2]
//         //   i=1 (candidate=3), remaining=6
//         //   path = [2, 3]
//         //   backtrack(1, 3) কল

//         //     backtrack(1, 3)
//         //     path = [2, 3, 3]
//         //     remaining = 0
//         //     result.add([2,3,3])
//         //     result = [[2,2,2,2], [2,3,3]]
//         //     return

//         //   path.removeLast() → path = [2]
//         //   i=2 (candidate=5), remaining=6
//         //   path = [2, 5]
//         //   backtrack(2, 1) কল

//         //     backtrack(2, 1)
//         //     i=2, 5 > 1 → skip
//         //     return

//         //   path.removeLast() → path = [2]
//         //   loop শেষ, return

//         // path.removeLast() → path = []
//         // 1st iteration শেষ

//         // ---- 2nd iteration (i=1, candidate=3) ----
//         // backtrack(0, 8) এর for loop চলছে
//         // path = [3]
//         // remaining = 8 - 3 = 5
//         // backtrack(1, 5) কল করা হলো

//         //   backtrack(1, 5)
//         //   i=1 (candidate=3)
//         //   path = [3, 3]
//         //   remaining = 5 - 3 = 2
//         //   backtrack(1, 2) কল

//         //     backtrack(1, 2)
//         //     i=1, 3 > 2 → skip
//         //     i=2, 5 > 2 → skip
//         //     return

//         //   path.removeLast() → path = [3]
//         //   i=2 (candidate=5)
//         //   path = [3, 5]
//         //   remaining = 5 - 5 = 0
//         //   backtrack(2, 0) কল
//         //   remaining == 0 → result.add([3,5])
//         //   result = [[2,2,2,2], [2,3,3], [3,5]]
//         //   return

//         //   path.removeLast() → path = [3]
//         //   loop শেষ, return

//         // path.removeLast() → path = []
//         // 2nd iteration শেষ

//         // ---- 3rd iteration (i=2, candidate=5) ----
//         // backtrack(0, 8) এর for loop চলছে
//         // path = [5]
//         // remaining = 8 - 5 = 3
//         // backtrack(2, 3) কল করা হলো

//         //   backtrack(2, 3)
//         //   i=2, 5 > 3 → skip
//         //   loop শেষ, return

//         // path.removeLast() → path = []
//         // 3rd iteration শেষ

//         // ফাইনাল result = [[2,2,2,2], [2,3,3], [3,5]]

//       }
//     }

//     backtrack(0, target);
//     return result;
//   }
// } 

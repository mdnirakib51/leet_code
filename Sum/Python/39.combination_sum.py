from typing import List


class Solution:
    def combinationSum(self, candidates: List[int], target: int) -> List[List[int]]:
        result = []
        path = []

        def backtrack(start: int, remaining):
            if remaining == 0:
                result.append(path.copy())

            for i in range(start, len(candidates)):

                if candidates[i] > remaining: continue

                path.append(candidates[i])

                backtrack(i, remaining - candidates[i])

                path.pop()

        backtrack(0, target)
        return result
    
print(Solution().combinationSum([2,3,5], 8))

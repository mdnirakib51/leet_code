from typing import List

class Solution:
    def permute(self, nums: List[int]) -> List[List[int]]:
        result = []     # সব final permutation
        path = []       # current permutation

        def backtrack():
            # যদি path এর length nums এর সমান হয় → valid permutation
            if len(path) == len(nums):
                result.append(path.copy())
                return

            # nums এর সব element নিয়ে loop
            for i in range(len(nums)):

                # যদি nums[i] আগেই path এ থাকে → skip
                if nums[i] in path:
                    continue

                # nums[i] নেওয়া হলো
                path.append(nums[i])

                # পরের level এ যাই
                backtrack()

                # backtrack → শেষ element remove
                path.pop()

        backtrack()
        return result

print(Solution().permute([1, 2, 3]))
from typing import List

class Solution(object):
    def search(self, nums: List[int], target: int) -> int:
        left = 0
        right = len(nums) - 1

        while left <= right:

            mid = (left + right) // 2

            # Mid
            if nums[mid] == target:
                return mid
            
            # Case 1: left → mid অংশ sorted
            if nums[left] <= nums[mid]:
                if nums[left] <= target and target < nums[mid]:
                    right = mid - 1
                else:
                    left = mid + 1
            
            # Case 2: mid → right অংশ sorted
            else:
                if nums[mid] <= target and target < nums[right]:
                    left = mid - 1
                else:
                    right = mid + 1
    
        return -1

s = Solution()

result = s.search([4,5,6, 7 ,0,1,2], 0)
print(result)
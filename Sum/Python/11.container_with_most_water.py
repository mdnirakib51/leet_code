from typing import List

class Solution:
    def maxArea(self, height: List[int])-> int:
        left = 0
        right = len(height) - 1
        maxArea = 0

        while(left < right):
            h = height[left] if height[left] < height[right] else height[right]
            w = right - left

            area = h * w

            if area > maxArea:
                maxArea = area
            
            if height[left] < height[right]:
                left = left + 1
            else:
                right = right - 1
        
        return maxArea
            

# class Solution:
#     def maxArea(self, height: List[int])-> int:
#         left = 0
#         right = len(height) - 1
#         maxArea = 0

#         while(left < right):
#             h = height[left] if height[left] < height[right] else height[right]
#             w = right - left

#             area = h * w

#             if area > maxArea:
#                 maxArea = area

#             if height[left] < height[right]:
#                 left = left + 1
#             else:
#                 right = right - 1

#         return maxArea
    
solution = Solution()
print(solution.maxArea([1,8,6,2,5,4,8,3,7])) ## Expected 49
print(solution.maxArea([1,1]))               ## Expected 1
print(solution.maxArea([4,3,2,1,4]))         ## Expected 16
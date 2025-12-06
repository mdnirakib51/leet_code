# Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

# Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

 

# Example 1:

# Input: x = 123
# Output: 321
# Example 2:

# Input: x = -123
# Output: -321
# Example 3:

# Input: x = 120
# Output: 21

class Solution:
    def reverse(self, x: int) -> int:
        sign = -1 if x < 0 else 1
        num = abs(x)
        rev = 0

        while(num != 0):
            digit = num % 10
            num //= 10

            if rev > (2**32 - 1 - digit) // 10:
                return 0
            
            rev = rev * 10 + digit

        return rev * sign

# class Solution:
#     def reverse(self, x: int)-> int:
#         sign = -1 if x < 0 else 1
#         num = abs(x)
#         rev = 0

#         while(num != 0):
#             digit = num % 10
#             num //= 10

#             if rev < (2**31 - 1 - digit) // 10:
#                 return 0
            
#             rev = rev * 10 + digit

#         return rev * sign


s = Solution()
print(s.reverse(123))    # 321
print(s.reverse(-123))   # -321
print(s.reverse(120))    # 21
print(s.reverse(1534236469)) # 0 (overflow হলে 0 ফেরত দিবে)

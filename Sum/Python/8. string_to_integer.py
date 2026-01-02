class Solution:
    def myAtoi(self, s: str)-> int:
        s = s.lstrip()
        if not s: return 0
        
        sign = 1
        i = 0
        
        if s[i] in ['+', '-']:
            sign = -1 if s[i] == '-' else 1
            i += 1
            
        result = 0
        while i < len(s) and s[i].isdigit():
            digit = int(s[i])
            
            if result > (2**31 - 1 - digit) // 10:
                return -2**31 if sign == -1 else 2**31 - 1
                
            result = result * 10 + digit
            
            # result = 0
            # digit = 1 → result = 1
            # digit = 3 → result = 13
            # digit = 3 → result = 133
            # digit = 7 → result = 1337
            
            i += 1
            
        return result * sign

# s = Solution()
# result = s.myAtoi('2147483648')
# print(result)
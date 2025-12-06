class ListNode(object):
    def __init__(self, val = 0, next = None):
        self.val = val
        self.next = next


class Solution(object):
    def addTwoNumbers(self, l1, l2):
        dummy = ListNode(0)
        current = dummy
        carry = 0

        while l1 or l2 or carry:
            x = l1.val if l1 else 0
            y = l2.val if l2 else 0

            sum = x + y + carry
            carry = sum // 10
            digit = sum % 10

            current.next = ListNode(digit)
            current = current.next

            if l1: l1 = l1.next
            if l2: l2 = l2.next

        return dummy.next
    
def printList(node):
    while node:
        print(node.val, end = " -> " if node.next else "\n")
        node = node.next

l1 = ListNode(2, ListNode(4, ListNode(3)))  # 342
l2 = ListNode(5, ListNode(6, ListNode(4)))  # 465

s = Solution()
result = s.addTwoNumbers(l1, l2)
printList(result)

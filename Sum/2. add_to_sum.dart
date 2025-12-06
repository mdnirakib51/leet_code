class ListNode {
  int val;
  ListNode? next;

  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    ListNode dummyHead = ListNode(0);
    ListNode current = dummyHead;
    int carry = 0;

    while (l1 != null || l2 != null || carry != 0) {
      int x = l1?.val ?? 0;
      int y = l2?.val ?? 0;

      int sum = x + y + carry;
      carry = sum ~/ 10;

      current.next = ListNode(sum % 10);
      current = current.next!;

      l1 = l1?.next;
      l2 = l2?.next;
    }

    return dummyHead.next;
  }
} 

void printList(ListNode? node) {
  while (node != null) {
    print(node.val); // এক এক করে মান প্রিন্ট হবে
    node = node.next;
  }
}

void main() {
  // লিস্ট: 342 => 2 -> 4 -> 3
  ListNode l1 = ListNode(2, ListNode(4, ListNode(3)));

  // লিস্ট: 465 => 5 -> 6 -> 4
  ListNode l2 = ListNode(5, ListNode(6, ListNode(4)));

  Solution solution = Solution();
  ListNode? result = solution.addTwoNumbers(l1, l2);

  // ✅ রেজাল্ট প্রিন্ট
  print("Result Linked List:");
  printList(result);
}
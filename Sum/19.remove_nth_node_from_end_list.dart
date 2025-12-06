class ListNode{
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution{
  ListNode? removeNthFromEnd(ListNode? head, int n){
    ListNode dummy = ListNode(0, head);
    ListNode? first = dummy;
    ListNode? second = dummy;

    for(int i = 0; i <= n; i++){
      first = first?.next;
    }

    while(first != null){
      first = first.next;
      second = second?.next;
    }

    second?.next = second.next?.next;
    
    return dummy.next;
  }
}

void main() {
  // Build list: 1 -> 2 -> 3 -> 4 -> 5
  ListNode node5 = ListNode(5);
  ListNode node4 = ListNode(4, node5);
  ListNode node3 = ListNode(3, node4);
  ListNode node2 = ListNode(2, node3);
  ListNode head = ListNode(1, node2);

  Solution sol = Solution();
  ListNode? newHead = sol.removeNthFromEnd(head, 2);

  // Print: 1 -> 2 -> 3 -> 5
  while (newHead != null) {
    print(newHead.val);
    newHead = newHead.next;
  }
}

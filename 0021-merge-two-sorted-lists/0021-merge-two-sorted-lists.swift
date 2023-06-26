/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

class Solution {
func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        // Create a dummy node to hold the result
        let dummy = ListNode(0)
        // Create a pointer to the dummy node
        var cur = dummy
        // Iterate over both lists
        var l1 = l1, l2 = l2
        while l1 != nil && l2 != nil {
            // Compare the values of the nodes in each list
            if l1!.val < l2!.val {
                // Append the smaller value to the result
                cur.next = l1
                // Advance the pointer in the first list
                l1 = l1!.next
            } else {
                // Append the smaller value to the result
                cur.next = l2
                // Advance the pointer in the second list
                l2 = l2!.next
            }
            // Advance the pointer in the result list
            cur = cur.next!
        }
        // Append the remaining nodes from the non-empty list
        cur.next = l1 ?? l2
        // Return the result, starting from the dummy's next node
        return dummy.next
    }
}
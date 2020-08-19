
class Node {
    var data: Int
    var next: Node?

    init(d: Int) {
        data = d
    }
}

class LinkedList {
    func insert(head: Node?, data: Int) -> Node? {
        if head == nil {
            return Node(d: data)
        }

        head?.next = insert(head: head?.next, data: data)

        return head
    }

    func display(head: Node?) {
        if head != nil {
            print(head!.data, terminator: " ")

            display(head: head?.next)
        }
    }
    
    func removeDuplicates(head: Node?) -> Node? {
        guard head != nil else { return nil }
        var newNode:Node? = Node(d: head?.data ?? 0)
        var s:Set = [head?.data ?? 0]
        var temp = head?.next
        let tempHead = newNode
        while temp != nil {
            if let data = temp?.data {
                if !s.contains(data) {
                    s.insert(data)
                    newNode?.next = Node(d: data)
                    newNode = newNode?.next
                }
            }
            temp = temp?.next
        }
        return tempHead
    }
}

//Test case #0
var head: Node?
let linkedList = LinkedList()

head = linkedList.insert(head: head, data: 1)
head = linkedList.insert(head: head, data: 2)
head = linkedList.insert(head: head, data: 2)
head = linkedList.insert(head: head, data: 3)
head = linkedList.insert(head: head, data: 3)
head = linkedList.insert(head: head, data: 4)

linkedList.display(head: linkedList.removeDuplicates(head: head))

//Expected Output
//1 2 3 4

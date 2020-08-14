import Foundation

class Node {
    let data: Int
    var next: Node?

    init(data: Int) {
        self.data = data
    }
}

func insert(head: Node?, data: Int!) -> Node? {
    // Enter your code here.
    let newNode = Node(data: data)
    if head == nil { return newNode }
    var tempNode = head
    while (tempNode?.next != nil){
        tempNode = tempNode?.next
     }
    tempNode?.next = newNode
    return head
}

func display(head: Node?) {
    var current = head

    while current != nil {
        print(current!.data, terminator: " ")
        current = current!.next
    }
}

var head: Node?

//Test case #0
let elements = [2,3,4,1]
for element in elements {
    head = insert(head: head, data: element)
}
display(head: head)
//Expected Output
//2 3 4 1


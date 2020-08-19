    
class Node {
    var data: Int
    var left: Node?
    var right: Node?

    init(d : Int) {
        data  = d
    }
}

class Tree {
    
    var queue:[Node] = []
    
    func insert(root: Node?, data: Int) -> Node? {
        if root == nil {
            return Node(d: data)
        }
        if data <= (root?.data)! {
            root?.left = insert(root: root?.left, data: data)
        } else {
            root?.right = insert(root: root?.right, data: data)
        }
        return root
    }
    
    func levelOrder(root: Node?) -> Void {
        guard root != nil else { return }
        
        print(root!.data, terminator: " ")
        append(node: root)
    }
    
    func append(node:Node?) {
        if let left = node?.left {
            queue.append(left)
        }
        if let right = node?.right {
            queue.append(right)
        }
        if !queue.isEmpty {
            levelOrder(root: queue.removeFirst())
        }
    }


}

//Test case #0
var root: Node?
let tree = Tree()
root = tree.insert(root: root, data: 3)
root = tree.insert(root: root, data: 2)
root = tree.insert(root: root, data: 5)
root = tree.insert(root: root, data: 1)
root = tree.insert(root: root, data: 4)
root = tree.insert(root: root, data: 7)
tree.levelOrder(root: root)

//Expected Output
//3 2 5 1 4 7

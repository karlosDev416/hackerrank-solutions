import Foundation

class Node {
    var data: Int
    var left: Node?
    var right: Node?

    init(d : Int) {
        data  = d
    }
}

class Tree {
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

    func getHeight(root: Node?) -> Int {
        return (root == nil) ? -1 : max(getHeight(root: root?.left) + 1, getHeight(root: root?.right) + 1)
    }
}

//Test case #0
var root: Node?
let tree = Tree()
root = tree.insert(root: root, data: 3)
root = tree.insert(root: root, data: 5)
root = tree.insert(root: root, data: 2)
root = tree.insert(root: root, data: 1)
root = tree.insert(root: root, data: 4)
root = tree.insert(root: root, data: 6)
root = tree.insert(root: root, data: 7)
print(tree.getHeight(root: root))

//Expected Output
//3

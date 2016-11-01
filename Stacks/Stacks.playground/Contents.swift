import UIKit

class StackWithArr<T> {
    private var arr = Array<T>()
    
    func pop() -> T? {
        //return arr.popLast()
        guard arr.count > 0 else {
            return nil
        }
        return arr.remove(at: arr.count-1)
    }
    
    func push(newElement: T) { // does not need to return something
        arr.append(newElement)
    }
    
    func peek() -> T? {
        guard arr.count > 0 else {
            return nil
        }
        return arr.last
    }
    
    func isEmpty() -> Bool {
        return arr.isEmpty
        //return arr.count == 0
    }
}

let myStack = StackWithArr<Int>()


class Node<T> {
    var key: T!
    var next: Node?
}

class LinkedList<T> {
    var head = Node<T>()
}

// H -> 2 -> 3
// new -> H -> 2 -> 3


// Using first thing of linkedList as the top of a stack - it uses less time

class StackWithLL<T> {
    private var list = LinkedList<T>()
    //pop
    func pop() -> T? {
         guard list.head.next != nil else {
            list.head.key = nil
            return nil
        }
        let oldKey = list.head.key
        list.head = list.head.next!
        return oldKey
    }
    
    //push
    func push(element: T) {
        if list.head.key == nil {
            list.head.key = element
            return
        }
        let newNode = Node<T>()
        newNode.key = element
        newNode.next = list.head
        list.head = newNode
    }
    
    //peek
    func peek() -> T? {
        return list.head.key
    }
    
    //isEmpty
    func isEmpty() -> Bool {
        return list.head.key == nil
    }
}

let myStackLL = StackWithLL<Int>()

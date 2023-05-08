// DEFINIÇÃO INSTAVEL

obj Node {
    value: int
    next: Node
}

obj Stack {
    head: Node

    fn push(value: int) {
        let new_node = Node { value, next: head }
        head = new_node
    }

    fn pop => int {
        if head {
            let popped = head.value
            head = head.next
            => popped
        } else {
            => nil
        }
    }

    fn is_empty => bool {
        not head
    }
}

fn main {
    let! stack

    stack.push 1
    stack.push 2
    stack.push 3

    let value = stack.pop
    print "Popped value: {}", value

    while not stack.is_empty {
        let value = stack.pop
        print "Popped value: {}", value
    }
}

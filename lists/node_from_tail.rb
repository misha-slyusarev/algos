# Find the Nth to last element of a singly linked list
#
# > list = Node.new('1', nil); list.add('2'); list.add('3');
# > node_from_tail(list, 1)
# => "3"

def node_from_tail(node, n)
  node, _ = from_tail(node, n)
  node
end

def count_from_tail(node, n)
  return nil, 0 if node == nil

  winner, count = count_from_tail(node.next, n)
  count += 1
  winner = node.data if !winner && count == n

  return winner, count
end

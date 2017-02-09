#  Single linked list
#
#  > list = Node.new('a', nil)
#  => #<struct Node data="a", next=nil>
#  > list.add('b')
#  => #<struct Node data="b", next=nil>
#  > list.inspect
#  => "#<struct Node data=\"a\", next=#<struct Node data=\"b\", next=nil>>"

require_relative 'node_from_tail'

Node = Struct.new(:data, :next) do

  def add(data)
    current = self
    while current.next != nil do
      current = current.next
    end

    current.next = Node.new(data, nil)
  end
end

def delete_node(head, data)
  current = head

  if current.data == data
    return head.next
  end

  while current.next != nil do
    if current.next.data == data
      current.next = current.next.next
      return head
    end
    current = current.next
  end
end

def remove_duplicates(head)
  current = head
  elements = {head.data => true}

  while current&.next != nil do
    if elements[current.next.data]
      current.next = current.next.next and next
    else
      elements[current.data] = true
    end

    current = current.next
  end
end

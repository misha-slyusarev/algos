# Single linked list
#
#  > list = Node.new('a', nil)
#  => #<struct Node data="a", next=nil>
#  > list.add('b')
#  => #<struct Node data="b", next=nil>
#  > list.inspect
#  => "#<struct Node data=\"a\", next=#<struct Node data=\"b\", next=nil>>"

Node = Struct.new(:data, :next) do

  def add(data)
    current = self
    while (current.next != nil) do
      current = current.next;
    end

    current.next = Node.new(data, nil)
  end
end

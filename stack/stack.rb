class Stack
  Struct.new("Node", :data, :next)

  attr_reader :min

  def push(data)
    new_node = Struct::Node.new(data, @head)
    @head = new_node

    @min = if @min == nil
             data
           else
             data < @min ? data : @min
           end
  end

  def pop
    return if empty?

    head_data = @head.data
    @head = @head.next
    head_data
  end

  def peek
    @head.data
  end

  def empty?
    @head == nil
  end
end

class Stack
  Struct.new('Node', :data, :pre_min, :prev)

  attr_reader :min

  def push(data)
    new_node = Struct::Node.new(data, nil, @head)
    @head = new_node

    if @min == nil
      @min = data
    else
      if data < @min
        new_node.pre_min = @min
        @min = data
      end
    end

    data
  end

  def pop
    return if empty?

    top = @head
    @head = top.prev

    @min = nil if empty?
    @min = top.pre_min unless top.pre_min.nil?

    top.data
  end

  def peek
    @head.data
  end

  def empty?
    @head == nil
  end
end

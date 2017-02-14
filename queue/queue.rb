class Queue
  Struct.new('Node', :data, :next)

  def empty?
    @first == nil
  end

  def add(data)
    if empty?
      @last = @first = Struct::Node.new(data, nil)
    else
      @last.next = Struct::Node.new(data, nil)
      @last = @last.next
    end
  end

  def remove
    return if empty?
    first_data = @first.data
    @first = @first.next
    first_data
  end

  def peek
    @first.data
  end
end

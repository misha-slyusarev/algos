# Stack of Plates: Imagine a (literal) stack of plates. If the stack gets too high, it might topple.
# composed of several stacks and should create a new stack once the previous one exceeds capacity.
# SetOfStacks.push() and SetOfStacks.pop() should behave identically to a single stack
# (that is, pop() should return the same values as it would if there were just a single stack).
#
# FOLLOW UP
# Implement a function popAt(int index) which performs a pop operation on a specific sub-stack.

require_relative 'stack'

class SetOfStacks
  Struct.new('StackNode', :stack, :prev)

  attr_reader :size

  def initialize(threshold)
    @threshold = threshold
    @top = nil
    @size = 0
  end

  def push(data)
    if size == 0 || size % @threshold == 0
      new_stack = Stack.new
      new_stack.push(data)
      new_stack_node = Struct::StackNode.new(new_stack, @top)
      @top = new_stack_node
    else
      @top.stack.push(data)
    end

    @size += 1
    data
  end

  def pop
    return if size == 0

    top_data = @top.stack.pop
    @size -= 1
    if size % @threshold == 0
      @top = @top.prev
    end

    top_data
  end
end

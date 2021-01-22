class Node
  def initialize(value)
    @value = value
    @next = nil
  end

  attr_accessor :value, :next
end

class LinkedList
  def initialize(values = nil)
    @head = nil
    @tail = nil
    @size = 0

    values.each(&->(value) { unshift value }) unless values.nil?
  end

  def unshift(value)
    new_node = Node.new value
    if @head.nil?
      @head = @tail = new_node
    else
      new_node.next = @head
      @head = new_node
    end
    increment_size
  end

  def shift
    return unless @head

    removed = @head
    @head = @head.next
    decrement_size

    removed
  end

  def push(value)
    new_node = Node.new value
    if @head.nil?
      @head = @tail = new_node
    else
      @tail = @tail.next = new_node
    end
    increment_size
  end

  def inset_into(position, value)
    if position <= 0 then unshift value
    elsif position >= @size then push value
    else
      new_node = Node.new value
      place = 0
      target = @head

      until place == position - 1
        target = target.next
        place += 1
      end

      next_node = target.next
      target.next = new_node
      new_node.next = next_node
      increment_size
    end
  end

  def all
    result = []
    current = @head
    until current.nil?
      result << current.value
      current = current.next
    end

    result
  end

  attr_reader :size, :head, :tail

  private

  def increment_size
    @size += 1
  end

  def decrement_size
    @size -= 1
  end

  alias first head
  alias last tail
end

list = LinkedList.new [3, 2]

list.unshift 1
list.unshift 2
list.unshift 5
list.push 12
list.push 8

pp list.size
pp list.first.value
pp list.last.value
pp list.shift.value

list.inset_into 10, 20

pp list.all

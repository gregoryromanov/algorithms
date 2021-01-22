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
    @size = 0

    values.each(&->(value) { unshift value }) unless values.nil?
  end

  def unshift(value)
    new_node = Node.new value
    if @head.nil?
      @head = new_node
    else
      new_node.next = @head
      @head = new_node
    end
    @size += 1
  end

  def shift
    return unless @head

    removed = @head
    @head = @head.next
    @size -= 1

    removed
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

  attr_reader :size, :head

  alias first head
end

list = LinkedList.new ['Alex Lukashenko', 'Vladimir Putin']

list.unshift 'Dima Petrov'
list.unshift 'Oleg Sidorov'
list.unshift 'Olga Buzovo'

pp list.size
pp list.first.value
pp list.shift.value

pp list.all

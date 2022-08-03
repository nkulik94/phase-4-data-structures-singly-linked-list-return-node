require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    list_size = 0
    last_node = self.head

    while last_node
      list_size += 1
      last_node = last_node.next_node
    end

    # if n < 1 || n > list_size || list_size == 0
    #   return
    # end

    right_index = list_size - n

    if right_index < 0 || right_index == list_size
      return
    end
    
    index = 0
    right_node = self.head
    while index < right_index
      right_node = right_node.next_node
      index += 1
    end
    right_node.value
  end

end

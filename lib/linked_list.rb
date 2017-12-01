require 'pry'
require_relative 'node'

class LinkedList

  attr_accessor :head,
                :count

  def initialize
    @head = nil
    @count = 0
  end


  def append(surname) # will take multiple paramitors with hashes for surplies
   current_position = @head
    if current_position.nil?
      @head = Node.new(surname)
    else
      while current_position.next_node != nil
      current_position = current_position.next_node
      end
      current_position.next_node = Node.new(surname)
    end
      @count += 1
  end

  def to_string
    current_position = @head
    surnames = "The #{current_position.surname} family"
    until current_position.next_node.nil?
      surnames << ",followed by the #{current_position.next_node.surname} family"
      current_position = current_position.next_node
    end
    surnames
  end

end

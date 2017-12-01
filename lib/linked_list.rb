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
   current = @head
    if current.nil?
      @head = Node.new(surname)
    else
      while current.next_node != nil
      current = current.next_node
      end
      current.next_node = Node.new(surname)
    end
      @count += 1
  end

  def to_string
    current = @head
    surnames = "The #{current.surname} family"
    until current.next_node.nil?
      surnames << ",followed by the #{current.next_node.surname} family"
      current = current.next_node
    end
    surnames
  end


end

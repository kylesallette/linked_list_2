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
    position = @head
      if position.nil?
        @head = Node.new(surname)
      else
        while position.next_node != nil
          position = position.next_node
        end
          position.next_node = Node.new(surname)
      end
      @count += 1
  end

  def prepend(surname)
    position = @head
    @head = Node.new(surname)
    @head.next_node = position
    @count += 1
  end

  def insert(index, surname)
    position = @head
    (index - 1).times do
      position = position.next_node
    end
    node = Node.new(surname)
    node.next_node = position.next_node
    position.next_node = node
    @count += 1
  end

  def find(index, how_many)
    position = @head
    index - 1
    surnames = "The #{position.surname} family"
      index.times do
        position.next_node
        position = position.next_node
        surnames = "The #{position.surname} family"
      end
      (how_many).times do
        position.next_node
        surnames <<  ",followed by the #{position.next_node.surname} family"
        position = position.next_node
      end
      surnames
  end

  def to_string
    position = @head
    surnames = "The #{position.surname} family"
    until position.next_node.nil?
      surnames << ",followed by the #{position.next_node.surname} family"
      position = position.next_node
    end
    surnames
  end

end

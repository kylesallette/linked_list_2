require_relative 'linked_list'

class WagonTrain

  def initialize
    @list = LinkedList.new
  end

  def head
    @head
  end

  def list
    @list
  end

  def count
    @list.count
  end

  def append(surname)
    @list.append(surname)
  end

  def prepend(surname)
    @list.prepend(surname)
  end

  def insert(index, surname)
    @list.insert(index, surname)
  end

  def find(index, how_many)
    @list.find(index, how_many)
  end

  def to_string
    @list.to_string
  end

  def pop
    @list.pop
  end

  def includes?(surname)
    @list.includes?(surname)
  end

end

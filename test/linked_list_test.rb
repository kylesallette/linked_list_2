require 'minitest/autorun'
require 'minitest/pride'
require_relative "../lib/linked_list"
require_relative "../lib/node"
require 'pry'

class LinkedListTest < Minitest::Test


  def test_head_is_nil_by_default
    list = LinkedList.new

    assert_nil list.head
  end

  def test_can_append_a_surname
    list = LinkedList.new

    list.append("West")

    assert_instance_of Node, list.head
    assert_equal "West", list.head.surname
  end

  def test_can_append_two_familys
    list = LinkedList.new

    list.append("West")
    list.append("Smith")

    assert_instance_of Node, list.head
    assert_equal "West", list.head.surname

    assert_instance_of Node, list.head
    assert_equal "Smith", list.head.next_node.surname
  end

  def test_can_append_five_familys
    list = LinkedList.new

    list.append("Burke")
    list.append("West")
    list.append("Rhodes")
    list.append("Hardy")
    list.append("Brooks")

    assert_instance_of Node, list.head
    assert_equal "Burke", list.head.surname

    assert_instance_of Node, list.head
    assert_equal "West", list.head.next_node.surname

    assert_instance_of Node, list.head
    assert_equal "Rhodes", list.head.next_node.next_node.surname

    assert_instance_of Node, list.head
    assert_equal "Hardy", list.head.next_node.next_node.next_node.surname

    assert_instance_of Node, list.head
    assert_equal "Brooks", list.head.next_node.next_node.next_node.next_node.surname
  end



end

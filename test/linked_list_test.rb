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

  def test_can_prepend_family
    list = LinkedList.new

    list.prepend("Burke")


    assert_instance_of Node, list.head
    assert_equal "Burke", list.head.surname
  end

  def test_can_append_and_prepend
    list = LinkedList.new

    list.append("Burke")
    list.prepend("Hardy")

    assert_instance_of Node, list.head
    assert_equal "Hardy", list.head.surname
    assert_equal "Burke", list.head.next_node.surname
  end

  def test_insert
    list = LinkedList.new

    list.append("Burke")
    list.append("Hardy")
    list.insert(1, "Johnson")

    assert_instance_of Node, list.head
    assert_equal "Burke", list.head.surname
    assert_equal "Johnson", list.head.next_node.surname
    assert_equal "Hardy", list.head.next_node.next_node.surname
  end

  def test_find
    list = LinkedList.new

    list.append("Burke")
    list.append("Hardy")
    list.append("Johnson")

    assert_equal "The Burke family", list.find(0,0)
    assert_equal "The Johnson family", list.find(2,0)
  end

  def test_find_with_following_families
    list = LinkedList.new

    list.append("Burke")
    list.append("Hardy")
    list.append("Johnson")

    assert_equal "The Burke family,followed by the Hardy family", list.find(0,1)
    assert_equal "The Hardy family,followed by the Johnson family", list.find(1,1)
  end

  def test_pop_family
    list = LinkedList.new

    list.append("Burke")
    list.append("Hardy")
    list.append("Johnson")

    assert_equal "the Johnson family has died of dysentery", list.pop
  end


end

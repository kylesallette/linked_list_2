require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative "../lib/node"

class NodeTest < Minitest::Test

  def test_has_surname
    node = Node.new("Burke")

    assert_equal "Burke", node.surname

  end

  def test_next_node_is_nil
    node = Node.new("Burke")

    assert_nil node.next_node

  end



end

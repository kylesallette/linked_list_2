require 'minitest/autorun'
require 'minitest/pride'
require_relative "../lib/wagon_train"
require 'pry'



class WagonTrainTest < Minitest::Test

  def test_append
    wt = WagonTrain.new

    assert_equal "John", wt.append("John")
    assert_equal "Smith", wt.append("smith")
    assert_equal "Sally", wt.append("sally")
  end

  def test_prepend
    wt = WagonTrain.new

    wt.append("John")

    assert_equal "Kyle", wt.prepend("Kyle")
    assert_equal "Smith", wt.prepend("smith")
    assert_equal "Sally", wt.prepend("sally")
  end

  def test_insert
    wt = WagonTrain.new

    expected = "The John family,followed by the Sally family,followed by the Smith family"

    wt.append("John")
    wt.append("smith")
    wt.insert(1,"sally")

    assert_equal expected, wt.to_string
  end

  def test_to_string
    wt = WagonTrain.new

    expected = "The John family,followed by the Smith family,followed by the Sally family"

    assert_equal "John", wt.append("John")
    assert_equal "Smith", wt.append("smith")
    assert_equal "Sally", wt.append("sally")

    assert_equal expected, wt.to_string
  end

  def test_includes?
    wt = WagonTrain.new


    wt.append("John")
    wt.append("smith")
    wt.append("sally")

    assert_equal true, wt.includes?("John")
    assert_equal true, wt.includes?("smith")
    assert_equal false, wt.includes?("Bill")
    assert_equal true, wt.includes?("sally")
  end

  def test_pop
    wt = WagonTrain.new

    wt.append("John")
    wt.append("smith")
    wt.append("sally")

    assert_equal "the Sally family has died of dysentery", wt.pop
    assert_equal 2, wt.count
  end

end

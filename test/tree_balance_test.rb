require_relative "test_helper"
require "tree"

class TreeBalanceTest < Minitest::Unit::TestCase
  def setup
    @treec = Tree.new('c',Tree.new('d'))
    b = Tree.new('b')
    @tree = Tree.new('a',b,@treec)
  end

  def test_is_balanced
    assert_equal Tree.isbalanced?(nil), true
    assert_equal Tree.isbalanced?(Tree.new(1)), true
    assert_equal Tree.isbalanced?(@treec), true
    assert_equal Tree.isbalanced?(Tree.new(1,Tree.new(2,Tree.new(3)))), false
  end

  def test_depth
    assert_equal Tree.depth(nil), 0
    assert_equal Tree.depth(Tree.new(1)), 1
    assert_equal Tree.depth(@tree), 3
  end

  def test_depth2
    assert_equal @tree.depth, 3
    assert_equal Tree.new(1).depth, 1
  end
end

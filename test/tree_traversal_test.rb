require_relative "test_helper"
require "tree"

class TreeTraversalTest < Minitest::Unit::TestCase
  def setup
    c = Tree.new('c',Tree.new('d'))
    b = Tree.new('b')
    @tree = Tree.new('a',b,c)
  end

  def test_preorder
    assert_equal @tree.preorder, ['a','b','c','d']
  end

  def test_inorder
    assert_equal @tree.inorder, ['b','a','d','c']
  end

  def test_postorder
    assert_equal @tree.postorder, ['b','d','c','a']
  end

  def test_depth
    assert_equal Tree.depth(nil), 0
    assert_equal Tree.depth(Tree.new(1)), 1
    assert_equal Tree.depth(@tree), 3
  end
end

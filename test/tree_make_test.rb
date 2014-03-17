require_relative "test_helper"
require "tree"

class TreeMakeTest < Minitest::Unit::TestCase
  def setup
    @array0 = Array.new
    @array1 = [1]
    @array2 = [1,2]
    @array3 = [1,2,3]
    @array = (0..9).to_a
  end

  def test_make_tree
    assert_equal Tree.make_tree(@array1).inorder, @array1
    assert_equal Tree.make_tree(@array2).inorder, @array2
    assert_equal Tree.make_tree(@array3).inorder, @array3
    assert_equal Tree.make_tree(@array).inorder, @array
  end

  def test_make_tree_2
    assert_equal Tree.make_tree2(@array1,0,1).inorder, @array1
    assert_equal Tree.make_tree2(@array2,0,2).inorder, @array2
    assert_equal Tree.make_tree2(@array3,0,3).inorder, @array3
    assert_equal Tree.make_tree2(@array,0,10).inorder, @array
  end
end

class Tree
  attr_accessor :name, :left, :right

  def initialize(name, left = nil, right = nil)
    @name = name
    @left = left
    @right = right
  end

  def preorder
    ([@name.to_s, @left ? @left.preorder : '', @right ? @right.preorder : ''] - ['']).flatten
  end

  def inorder
    ([@left ? @left.inorder : '', @name.to_s, @right ? @right.inorder : ''] - ['']).flatten
  end

  def postorder
    ([@left ? @left.postorder : '', @right ? @right.postorder : '', @name.to_s] - ['']).flatten
  end
end


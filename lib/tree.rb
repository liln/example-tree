class Tree
  attr_accessor :name, :left, :right

  def initialize(name, left = nil, right = nil)
    @name = name
    @left = left
    @right = right
  end

  def self.preorder(tree)
    return if tree.nil?
    print tree.name.to_s + " "
    preorder(tree.left)
    preorder(tree.right)
  end

  def self.inorder(tree)
    return if tree.nil?
    inorder(tree.left)
    print tree.name.to_s + " "
    inorder(tree.right)
  end

  def self.postorder(tree)
    return if tree.nil?
    postorder(tree.left)
    postorder(tree.right)
    print tree.name.to_s + " "
  end
end


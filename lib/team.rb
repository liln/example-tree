require_relative "tree"

p = Tree.new('Peter')
a = Tree.new('Andrea')
k = Tree.new('Katie',p,a)
j = Tree.new('Jony',Tree.new('Dan'),k)
phil = Tree.new('Phil',Tree.new('Craig'),Tree.new('Eddie'))
appleteam = Tree.new('Tim',j,phil)

puts "Preorder:"
Tree.preorder(appleteam)
puts ""

puts "Inorder:"
Tree.inorder(appleteam)
puts ""

puts "Postorder:"
Tree.postorder(appleteam)
puts ""

# Tree Playground

This repository contains ruby code I've written to solve various tree problems.

* [Preorder, Inorder, and Postorder Tree Traversal](#traversal)

* [Making the Optimal Binary Search Tree](#make_bst)


## Traversal<a name="traversal">

This problem contains this example tree structure and methods to traverse the tree in preorder, inorder and postorder.

Here's an example tree structure:

Name | Report 1 | Report 2
--- | --- | ---
Tim | Jony | Phil
Phil | Craig | Eddie
Jony | Dan | Katie
Katie | Peter | Andrea


### Usage

```
ruby lib/team.rb
```

### Output
```
Preorder:
Tim Jony Dan Katie Peter Andrea Phil Craig Eddie
Inorder:
Dan Jony Peter Katie Andrea Tim Craig Phil Eddie
Postorder:
Dan Peter Andrea Katie Jony Craig Eddie Phil Tim
```


## Making a Binary Search Tree<a name="make_bst">

Given a sorted list, make an optimal binary search tree.

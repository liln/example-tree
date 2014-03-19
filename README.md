# Tree Playground

This repository contains ruby code I've written to solve various tree problems.

* [Preorder, Inorder, and Postorder Tree Traversal](#traversal)

* [Making the Optimal Binary Search Tree](#make_bst)

* [Is a Tree Balanced?](#balanced)


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

### Problem

Given a sorted array, make an optimal binary search tree.

### Solution

A binary search tree is optimally arranged if it takes nearly equal time to traverse to all of its leaves. For a sorted array, it means that the root of the tree should be selected from the middle of the array. Then, what is to the left and right of the middle should be used to construct the trees to the left and the right respectively. Traversal to the leaves will be log(n). See `make_tree(array)` in `tree.rb` for an implementation that uses array slices. See `make_tree2(array)` for an implementation where I didn't use array slices (as if I wasn't lucky enough to be using Ruby).

## Balanced Tree?<a name="balanced">

### Problem

Given a tree, return true if it is balanced and false otherwise. For simplicity, a tree is considered balanced if the depth of each branch is within one.

### Solution

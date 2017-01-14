# Base (Super) class definition for a k-ary tree
class Node:
	# Constructor: set the node data
	def __init__(self, key):
		self.__key   = key	# node data

	# Set Node Data
	def Key(key):
		self.__key = key

	# Get Node Data
	def Key():
		return __key

	# Action to perform on a node	
	def Action(node):
		raise NotImplementedError("Please Implement this method")

class BinaryTree(Node):
	# Constructor: set the node data and left/right subtrees to null
	def __init__(self, key):
		Node.__init__(self, key)
		self.__left  = None	# left binary subtree
		self.__right = None	# right binary subtree

	# Set Left Binary Subtree
	def Left(left):
		self.__left = left

	# Get Left Binary Subtree
	def Left():
		return __left

	# Set Right Binary Subtree
	def Right(right):
		self.__right = right

	# Get Right Binary Subtree
	def Right():
		return __right
	
	# Example action to perform on a node
	def Action(node):
		print( node.key)

	#InOrder Traversal
	def InOrder(root):
		if root == None:
			return
		InOrder( root.left )
		Action( root )
		InOrder( root.right )
		
	# PreOrder Traversal
	def PreOrder(root):
		if root == None:
			return
		Action( root )
		PreOrder( root.left )
		PreOrder( root.right )

	# PostOrder Traversal
	def PostOrder(root):
		if root == None:
			return
		PreOrder( root.left )
		PreOrder( root.right )
		Action( root )

		# Driver code
		
root = BinaryTree(1)
root.left      = BinaryTree(2)
root.right     = BinaryTree(3)
root.left.left  = BinaryTree(4)
root.left.right  = BinaryTree(5)
print("Preorder traversal of binary tree is")
root.PreOrder()
 
#print "\nInorder traversal of binary tree is"
#printInorder(root)
 
#print "\nPostorder traversal of binary tree is"
#printPostorder(root)
		
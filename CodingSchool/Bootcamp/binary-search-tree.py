
class Node(object):
	""" Definition of a node """
	
	def __init__(self, value):
		self._value = value
		self._left  = None
		self._right = None
		
	@property
	def left(self):
		return self._left
		
	@left.setter
	def left(self, tree):
		self._left = tree
		
	@property
	def right(self):
		return self._right
		
	@right.setter
	def right(self, tree):
		self._right = tree
		
	@property
	def value(self):
		return self._value
		
	@value.setter
	def value(self, value):
		self._value = value

class BinarySearchTree(object): 
	""" Definition for a Binary Search Tree """

	def __init__(self): 
		""" Constructor: set the node data and left/right subtrees to null """
		self.root = None
		
	def insert(self, node):
		""" Insert a node into a binary search tree """
		# If tree is empty, make the root the first node
		if self.root is None:
			self.root = node
			return

		# Follow a path to insert the node
		curr = self.root
		while curr is not None:
			# if value is less than node, traverse left branch
			if node.value < curr.value:
				# if no left branch, set node as left branch
				if curr.left is None:
					curr.left = node
					return
				curr = curr.left
			# otherwise, traverse right branch		:
			elif curr.right is None:
				curr.right = node
				return
			else:
				curr = curr.right

	
	def find(self, value):
		""" Find a node into a binary search tree """
		# If tree is empty, return None
		if self.root is None:
			return None

		# Follow a path to find the node
		curr = self.root
		while True:
			# Node Found
			if curr.value == value:
				return curr
			# if value is less than node, traverse left branch
			if value < curr.value:
				# if no left branch, return not found
				if curr.left is None:
					return None
				curr = curr.left
			# otherwise, traverse right branch		:
			elif curr.right is None:
				return None
			else:
				curr = curr.right
				
	def delete(self, value):
		""" Find a node into a binary search tree """
		# If tree is empty, return None
		if self.root is None:
			return None

		# Follow a path to find the node to delete
		curr = self.root
		prev = self.root
		while True:
			# Node Found
			if curr.value == value:
				if left == True:		# delete the left branch of the parent
					prev.left = None
				else:					# delete the right branch of the parent
					prev.right = None
				if curr.left:			# re-insert left branch of deleted node
					self.insert(curr.left)
				if curr.right:			# re-insert right branch of delete node
					self.insert(curr.right)
				return
			# if value is less than node, traverse left branch
			if value < curr.value:
				# if no left branch, return not found
				if curr.left is None:
					return None
				curr = curr.left
				left = True		# traversed left branch
			# otherwise, traverse right branch		:
			elif curr.right is None:
				return None
			else:
				curr = curr.right
				left = False		# traversed right branch	
				
def bfs(root):
	""" Breadth First Search """
	# Check if tree is empty
	if root == None:
		return
			
	# list of nodes to visit in node level order
	visit = []
	visit.append(root)
		
	# sequentially visit in node in level order as it is dynamically added to the list
	i = 0
	while i < len(visit):
		# Perform the node action
		print(visit[i].value)
			
		# Add to the list the child siblings of this node
		if visit[i].left != None:
			visit.append(visit[i].left)
		if visit[i].right != None:
			visit.append(visit[i].right)
		i += 1
	
# Driver method
tree = BinarySearchTree()
tree.insert(Node(3))
tree.insert(Node(6))
tree.insert(Node(2))
tree.insert(Node(4))
tree.insert(Node(1))
print("Insert: BST level order: 3 2 6 1 4")
bfs(tree.root)

node = tree.find(4)
print("Find: (4)")
print(node.value)


tree.delete(6)
print("BST level order: 3 2 4 1")
bfs(tree.root)
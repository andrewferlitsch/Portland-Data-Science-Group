class BinaryTree(object):
	""" Constructor: set the node data and left/right subtrees to null """	
	def __init__(self, key):
		self._left  = None 	# left binary subtree
		self._right = None 	# right binary subtree 
		self._key   = key 	# node data 

	@property
	def left(self):
		""" Get the Left Binary Subtree """
		return self._left

	@left.setter
	def left(self, tree):
		""" Set the Left Binary Subtree """
		self._left = tree

	@property
	def right(self):
		""" Get the Right Binary Subtree """
		return self._right
		
	@right.setter
	def right(self, tree):
		""" Set the Right Binary Subtree """
		self._right = tree

	@property
	def key(self):
		""" Get the Node Data """
		return self._key

	@key.setter
	def key(self, key): 
		""" Set the Node Data """
		self._key = key

def bfs(root):
	""" Breadth First Search """
	# Check if tree is empty
	if root is None:
		return 

	# list of nodes to visit in node level order
	visit = []
	visit.append(root)

	# sequentially visit each node in level order as it is dynamically added to the list 
	i = 0
	while i < len(visit):
		print(visit[i].key)
		
		# Add to the list the child siblings of this node 
		if visit[i].left is not None: 
			visit.append(visit[i].left)
		if visit[i].right is not None:
			visit.append(visit[i].right) 
		i += 1
		
# Test Driver code
root = BinaryTree(1)
root.left  = BinaryTree(2)
root.right = BinaryTree(3)
root.left.left   = BinaryTree(4)
root.right.right = BinaryTree(5)

print( "BFS output 1 2 3 4 5")
bfs(root)
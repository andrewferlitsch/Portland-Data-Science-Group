class BinaryTree(dict):
	
	def __init__(self, key): 
		""" Constructor: set the node data and left/right subtrees to null """
		super().__init__(key=key, right=None, left=None)

		
	def maxMinDepth(self, max):
		""" Maximum/Minimum depth of a binary tree """
		max += 1	# Increment by one level for the node

		# Initialize the left and right branch max/min depth to the current max depth
		lmax = lmin  = max
		rmax = rmin = max

		# Calculate the maximum depth along the left binary subtree
		if self["left"] is not None:
			lmax, lmin = self["left"].maxMinDepth(max)

		# Calculate the maximum depth along the left binary subtree
		if self["right"] is not None:
			rmax , rmin = self["right"].maxMinDepth(max)

		# return the greater (max) and lessor (min) of the left and right subtrees
		return ( rmax if rmax > lmax else lmax ), ( rmin if rmin < lmin else lmin )
		
	def maxMinValue(self):
		""" Maximum/Minimum of a binary tree """
		# Initialize the left and right branch max/min values to +/- infinity
		lmax = rmax = -2147483647
		lmin  = rmin = 2147483648

		# Calculate the maximum depth along the left binary subtree
		if self["left"] is not None:
			lmax, lmin = self["left"].maxMinValue( )

		# Calculate the maximum depth along the left binary subtree
		if self["right"] is not None:
			rmax , rmin = self["right"].maxMinValue( )

		# Compare max/min of child with parent
		if rmax < self["key"]:
			rmax = self["key"]
		if rmin > self["key"]:
			rmin = self["key"]

		# return the greater (max) and lessor (min) of the left and right subtrees
		return ( rmax if rmax > lmax else lmax ), ( rmin if rmin < lmin else lmin )

def inOrder(root):
	""" # InOrder Traversal """
	if root is None:
		return
	inOrder(root["left"]) 
	print(root["key"])
	inOrder(root["right"])

def preOrder(root):
	""" PreOrder Traversal """
	if root is None:
		return
	print(root["key"])
	preOrder(root["left"])
	preOrder(root["right"])
	
def postOrder(root): 
	""" PostOrder Traversal """
	if root is None: 
		return
	postOrder(root["left"])
	postOrder(root["right"])
	print(root["key"])
	
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
		print(visit[i]["key"])
		
		# Add to the list the child siblings of this node 
		if visit[i]["left"] is not None: 
			visit.append(visit[i]["left"])
		if visit[i]["right"] is not None:
			visit.append(visit[i]["right"]) 
		i += 1 

# Test Driver code
root = BinaryTree(1)
root["left"]  = BinaryTree(2)
root["right"] = BinaryTree(3)
root["left"]["left"]   = BinaryTree(4)
root["right"]["right"] = BinaryTree(5)

print( "BFS output 1 2 3 4 5")
bfs(root)

print("Inorder traversal of binary tree is")
inOrder(root)

print("Preorder traversal of binary tree is")
preOrder(root)
 
print("Postorder traversal of binary tree is")
postOrder(root)

max, min = root.maxMinDepth( 0 )
print("Max Depth(3) is  " + str(max))
print("Min Depth(2) is  " + str(min))

max, min = root.maxMinValue()
print("Min Value(1) is  " + str(min))
print("Max Value(5) is  " + str(max))
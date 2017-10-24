
class Node(dict):
	""" Definition for a node in a graph """
	# Visit State
	UNVISITED = 0  # not visited or on frontier (while)
	FRONTIER  = 1  # on frontier, waiting to be visited (gray)
	VISITED   = 2  # visited (black)
	
	def __init__(self, key):
		""" constructor 
			initializing the fields as key=value pairs in dictionary
			key = the node key
			neighbors = list of neighboring nodes (visiters)
			level = level of the node
		"""
		super().__init__(key=key,neighbors=[],visited=self.UNVISITED, level=0)

	def neighbor(self, neighbor):
		""" Add a neighbor to this node """
		# list the node as a neighbor of this node
		self["neighbors"].append(neighbor)
		
		# set this node as a neighbor of the node
		neighbor["neighbors"].append(self)

def ids(root, goal):
	""" Iterative Depth Search of a graph """
	# Search the tree one level at a time
	level = 0
	root.level = 1
	while True:
		level += 1
		# Create a queue for frontier nodes (nodes to be visited next)
		frontier = []
			
		# Add the root node to the frontier ( Enqueue )
		frontier.append(root)	
		root["visited"] = root.FRONTIER
			
		# Traverse each node in the frontier list
		while len(frontier) != 0:
			# visit the next node	( Dequeue )
			visit = frontier[0]
			del frontier[0]
			visit["visited"] = visit.VISITED
			print(visit["key"])
			
			# goal node found
			if visit["key"] == goal:
				return visit
				
			# complete this level of search
			if visit["level"] == level:
				break
				
			# Add the node's neighbors (if not visited and not on frontier list) 
			# to the frontier list
			nodes = visit["neighbors"]
			
			# no more nodes past this depth
			if len(nodes) == 0:
				continue
			for node in nodes:
				# not in visited or unvisited list
				if node["visited"] == node.UNVISITED:
					node["level"] = visit["level"]
					frontier.append( node )			# Enqueue
					node["visited"] = node.FRONTIER

# Test Driver
nodes = [None] * 6;
for i in range(0, 6):
	nodes[i] = Node(i)
nodes[0].neighbor(nodes[1])
nodes[0].neighbor(nodes[2])
nodes[0].neighbor(nodes[3])
nodes[1].neighbor(nodes[2])
nodes[1].neighbor(nodes[3])
nodes[3].neighbor(nodes[4])
nodes[3].neighbor(nodes[5])
nodes[4].neighbor(nodes[5])

print("IDS: 0 0 1 2 3 4 5")
ids(nodes[0], 5)
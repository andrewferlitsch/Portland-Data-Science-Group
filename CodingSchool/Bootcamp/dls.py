
class Node(dict):
	""" Definition for a node in a graph """
	# Visit State
	UNVISITED = 0  # not visited or on frontier (while)
	FRONTIER  = 1  # on frontier, waiting to be visited (gray)
	VISITED   = 2  # visited (black)
	
	def __init__(self, key):
		""" constructor 
			key = node
			neighbors = list of neighboring nodes (vertices)
			visited = if node has been visited
			level = node level
		"""
		super().__init__(key=key, neighbors=[], visited=self.UNVISITED, level=0)
	
	def neighbor(self, neighbor):
		""" Add a neighbor to this node """
		# list the node as a neighbor of this node
		self["neighbors"].append(neighbor)
		
		# set this node as a neighbor of the node
		neighbor["neighbors"].append(self)

def dls(root, goal, level):
	""" Depth first search of a graph (Iterative) """
	# Create a stack for frontier nodes (nodes to be visited next)
	frontier = []
	
	# Set node level of root to one
	root["level"] = 1
		
	# Add the root node to the frontier (Push )
	frontier.append(root)
	root["visited"] = root.FRONTIER
		
	# Traverse each node in the frontier list
	while len(frontier) != 0:
		# visit the next node	( Pop )
		visit = frontier[len(frontier) - 1]	
		del frontier[len(frontier) - 1]
		visit["visited"] = visit.VISITED
		print(visit["key"])
		
		# Is this the goal node
		if visit["key"] == goal:
			return visit
			
		# if level of node equals level, skip the rest of the loop
		if visit["level"] == level:
			continue
			
		# Add the node's neighbors (if not visited and not on frontier list) 
		# to the frontier list
		nodes = visit["neighbors"]
		for node in nodes:
			# not in visited or unvisited list
			if node["visited"] == node.UNVISITED:
				frontier.append(node)	# Push
				node["visited"] = node.FRONTIER
				node["level"] = visit["level"] + 1
				
	# Goal node not found
	return None
	
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
	
print("DFS:for goal 5, level 1 : 0")
dls(nodes[0], 5, 1)

for i in range(0, 6):
	nodes[i]["visited"] = nodes[i].UNVISITED
	
print("DFS:for goal 5, level 2 : 0 3 5")
dls(nodes[0], 5, 3) 


class Node(object):
	""" Definition of a Node """
	_value = 0			# value of the node
	_next  = None		# pointer to the next node in the list
	
	def __init__(self, value):
		self._value = value
		
	def next(self, node):
		""" link this node to the next node """
		self._next = node

# Testcases		
n1 = Node(1)
print("1 == ", n1._value)

n2 = Node(2)
print("2 == ", n2._value)

# n1 -> n2
n1._next = n2
print( "2 == ", n1._next._value)

n3 = Node(3)
# n1 -> n2 -> n3
n2.next(n3)
print("3 == ", n3._value)

class LinkedList(object):
	""" Definition of a Linked List """
	
	head = None		# head (first node) in the list
	size = 0
	
	def append(self, node):
		""" Add to the end of the list """
		# Empty List - Nothing in the list, so make the head this node
		if self.head is None:
			self.head = node
		# Non-Empty List - Find the end of the list, and add this node to the end,
		# making it the new end of the list
		else:
			curr = self.head
			# Find the end of the list (tail)
			while curr:
				# At end of the list
				if curr._next is None:
					# Add to the end of the list
					curr._next = node
					break
					
		self.size += 1
					
	def push(self, node):
		""" Add to the front of a list """
		
		# Empty List - Nothing in the list, so make the head this node
		if self.head is None:
			self.head = node
		# Non-Empty List - set the next of this node to the head of the list (put it in front),
		# and theh update the head to be this node.
		else:
			# set new node's next to current head of the list
			node._next = self.head
			# reset the head to the new node
			self.head = node
					
		self.size += 1
			
	def pop(self):
		""" Remove from the front of the list """
		# Empty List - nothing to pop
		if self.head is None:
			return None
		# Non-Empty List - get (return) the node at the head, and
		# reset the head to the next hode in the list
		else:
			node = self.head			# get the node at the head of the list
			self.head = self.head._next	# move the head down one node in the list	
			self.size -= 1
			return node					# return that first node
			
	def __len__(self):
		""" Define the len() operator for this class """
		# hidden name for the len() and override (redefine it)
		return(self.size)
		
	def __getitem__(self, index):
		if index == 0:
			return self.head
	
		curr = self.head
		# Walk the list
		while curr:
			curr = curr._next
			index -= 1
			if index == 0:
				return curr
		
					
l = LinkedList()
n1 = Node('A')
# head -> n1
l.append(n1)
print("A == ", l.head._value, " size 1 == ", l.size)

n2 = Node('B')
# head -> n1 -> n2
l.append(n2)
print("B == ", l.head._next._value, " size 2 == ", l.size)

n3 = Node('C')
# head -> n3 -> n1 -> n2
l.push(n3)
print("C == ", l.head._value)
print("A == ", l.head._next._value)
print("B == ", l.head._next._next._value, " size 3 == ", l.size )

# head -> n1 -> n2
n = l.pop()
print("C == ", n._value)
print("A == ", l.head._value)
print("B == ", l.head._next._value, " size 2 == ", l.size)

print(len(l), " == ", l.__len__())

print("A == ", l[0]._value)

print("B == ", l[1]._value)



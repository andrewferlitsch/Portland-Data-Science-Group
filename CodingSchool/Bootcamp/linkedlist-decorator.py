
class Node(object):
	""" Definiton of an Element (Node) in a Linked List """
	_value = None	# use _ to indicate private attributes
	_next  = None
	
	def __init__(self, value, next = None):
		self._value = value
		self._next  = next
	
	@property
	def next(self):
		return self._next
		
	@next.setter
	def next(self, next):
		self._next = next
		
	@property
	def value(self):
		return self._value
		
	@value.setter
	def value(self, value):
		self._value = value
		
		
# Testcases		
n1 = Node(1)
print("1 == ", n1.value)

n2 = Node(2)
print("2 == ", n2.value)

# n1 -> n2
n1.next = n2
print( "2 == ", n1.next.value)

n3 = Node(3)
# n1 -> n2 -> n3
n2.next = n3
print("3 == ", n3.value)

	
class LinkedList(object):
	""" Definition of a Single Link List """
	
	head = None		# head (begin) of the list
	tail = None		# tail (end) of the list
	size = 0		# number of elements in the list
	
	def __init__(self):
		pass
		
	def append(self, node):
		""" Add to the end of the List """
		
		# Empty List - set tail and head to the first element
		if self.size == 0:
			self.head = self.tail = node
		# Non-Empty List
		#	1. Set the next of current tail to the element
		#	2. Make the tail now the appended element
		else:
			self.tail.next = node
			self.tail = node
			
		self.size += 1
			
	def prepend(self, value):
		""" Add element to the front of the list """
		element = Element(value)
		
		# Empty List - set tail and head to the first element
		if self.size == 0:
			self.head, self.tail = element, element		# note the different style of assignment syntax
		# Non-Empty List
		else:
			element.next = self.head
			self.head = element
			
		self.size += 1
			
			
	def push(self,node):
		""" Add to the front of a list """
		
		# Empty List - Nothing in the list, so make the head this node
		if self.head is None:
			self.head = node
		# Non-Empty List - set the next of this node to the head of the list (put it in front),
		# and theh update the head to be this node.
		else:
			# set new node's next to current head of the list
			node.next = self.head
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
			self.head = self.head.next	# move the head down one node in the list	
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
			curr = curr.next
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
print("C == ", l.head.value)
print("A == ", l.head.next.value)
print("B == ", l.head.next.next.value, " size 3 == ", l.size )

# head -> n1 -> n2
n = l.pop()
print("C == ", n.value)
print("A == ", l.head.value)
print("B == ", l.head.next.value, " size 2 == ", l.size)

print(len(l), " == ", l.__len__())

print("A == ", l[0].value)

print("B == ", l[1].value)
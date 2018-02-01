
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
	
class Stack(object):
	""" Definition of a Stack """
	
	top  = None		# top (begin) of the list
	size = 0		# number of elements in the list
	
	def __init__(self):
		pass

	def push(self,node):
		""" Add to the top of the stack """
		
		# Empty List - Nothing in the stack, make this node the top
		node.next = self.top
		self.top = node
		
		self.size += 1
		
	def pop(self):
		""" Remove from the top of the stack """
		
		# Empty Stack - nothing to pop
		if self.top is None:
			return None
		
		node = self.top
		self.top = node.next

		self.size -= 1
		return node
		
	def __len__(self):
		return self.size
		
# Testcases
s = Stack()

# top -> n1
n1 = Node(1)
s.push(n1)
print("1 == ", s.top.value)

# top -> n2, n1
n2 = Node(2)
s.push(n2)
print("2 == ", s.top.value)
print("1 == ", s.top.next.value)

# top -> n3, n2, n1
n3 = Node(3)
s.push(n3)
print("3 == ", s.top.value)
print("2 == ", s.top.next.value)
print("1 == ", s.top.next.next.value)
print("3 == ", len(s))

# top -> n2, n1
n = s.pop()
print("3 == ", n.value)
print("2 == ", s.top.value)
print("1 == ", s.top.next.value)

# top -> n1
n = s.pop()
print("2 == ", n.value)
print("1 == ", s.top.value)
print("1 == ", len(s))

# top -> None
n = s.pop()
print("1 == ", n.value)
print("None == ", s.top)

n = s.pop()
print("None == ", n)

		

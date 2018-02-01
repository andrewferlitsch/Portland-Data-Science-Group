
class Node(object):
	""" Definition of a node (element) in a linked list """
	
	_value = None	# value stored in the node
	_next  = None	# forward link
	_prev  = None	# backward link
	
	def __init__(self, value):
		self._value = value
		
class DoubleLinkList(object):
	head = None	# head (begin) of the list
	tail = None # tail (end) of the list
	curr = None # where we are in list for forward/backward
	
	def __init__(self):
		pass
		
	def append(self, node):
		""" Add a node to the end of the list """
		
		# Empty-List - Make the head and tail point to the single node in the list
		if self.head is None:
			self.head = node
			self.tail = node
		# Non-Empty List - Add the node to the tail of the list
		else:
			self.tail._next = node	# set the current tail's next ptr to the node (forward link)
			node._prev = self.tail	# set the node prev ptr to the current tail (backward link)
			self.tail  = node		# set the tail to the node

	def remove(self, value):
		""" Remove a node from the list """
		
		# Starting from the beginning, walk the list to find the node to remove
		prev = None			# remember the previous node visited
		curr = self.head	# the current node being visited
		while curr is not None:
			# Found the node to remove
			if curr._value == value:
				# Not the head of the list
				if prev is not None:
					# re-attach the forward link
					prev._next = curr._next
					
					# re-attach the backward link
					if curr._next is not None:
						curr._next._prev = prev
						
				# Special case if node is the head of the list
				if self.head == curr:
					self.head = curr._next
					
				# Special case if the node is the tail of the list
				if self.tail == curr:
					self.tail = curr._prev
				break
			# not found, advance to the next node
			else:
				prev = curr			# set the previous node to the current node before advancing
				curr = curr._next	# now advance to the next node
				
	
	def shift(self):
		""" remove from the end of the list """
		
		if self.tail is None:
			raise Exception("empty list")
			
		node = self.tail	# the node to return (end of the list)
		
		if self.tail._prev is not None:
			self.tail._prev._next = None
		self.tail = self.tail._prev
		
		if self.tail is None:
			self.head = None
			
		return node
			
	def forward(self):
		""" Page forward through the list """
		
		if self.curr is None:
			self.curr = self.head
		else:
			self.curr = self.curr._next
		return self.curr
			
		
	def backward(self):
		""" Page backward through the list """
		
		if self.curr is None:
			self.curr = self.tail
		else:
			self.curr = self.curr._prev
		return self.curr
			
# Test Cases	
d = DoubleLinkList()
n1 = Node(1)
print("1 == ", n1._value)

# head -> n1
d.append(n1)
print("1 == ", d.head._value)

n2 = Node(2)
# head -> n1 <-> n2
d.append(n2)
print("2 == ", d.head._next._value)
print("1 == ", n2._prev._value)

n3 = Node(3)
# head -> n1 <-> n2 <-> n3
d.append(n3)
print("3 == ", d.head._next._next._value)
print("2 == ", n3._prev._value)

n = d.forward()
print("1 == ", n._value)

n = d.forward()
print("2 == ", n._value)

n = d.forward()
print("3 == ", n._value)

n = d.forward()
print("None == ", n)

n = d.backward()
print("3 == ", n._value)

n = d.backward()
print("2 == ", n._value)

n = d.backward()
print("1 == ", n._value)
	
# remove middle	
# head -> n1 <-> n3
d.remove(2)
print("3 == ", n1._next._value)
print("1 == ", n3._prev._value)	

# remove tail
# head -> n1
d.remove(3)
print("None == ", n1._next)
print("1 == ", d.head._value)
print("1 == ", d.tail._value)

# remove head
# head -> None
d.remove(1)
print("None == ", d.head)
print("None == ", d.tail)

# head -> n1 <--> n2 <--> n3
d.append(n1)
d.append(n2)
d.append(n3)

# head -> n1 <--> n2
n = d.shift()
print( "3 == ", n._value)
# head -> n1 
n = d.shift()
print( "2 == ", n._value)
# head -> None
n = d.shift()
print( "1 == ", n._value)

try:
	n = d.shift()
except:
	pass
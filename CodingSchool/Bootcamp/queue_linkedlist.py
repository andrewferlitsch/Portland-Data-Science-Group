
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
	
class Queue(object):
	""" Definition of a Queue """
	
	front  = None   # front (begin) of the queue
	size = 0		# number of elements in the queue
	
	def __init__(self):
		pass

	def enqueue(self,node):
		""" Add to the back of the queue """
		
		if self.front is None:
			self.front = node
		else:
			curr = self.front
			while curr.next is not None:
				curr = curr.next
			curr.next = node
			
		self.size += 1
	
	def dequeue(self):
		""" Remove from the front of the queue """
		
		if self.front is None:
			return None
			
		node = self.front
		self.front = node.next

		self.size -= 1
		return node
			
	def __len__(self):
		return self.size
		
# Testcases (when called from command line)
if __name__ == "__main__":
	q = Queue()

	# front -> n1
	n1 = Node(1)
	q.enqueue(n1)
	print("1 == ", q.front.value)

	# front -> n1, n2
	n2 = Node(2)
	q.enqueue(n2)
	print("1 == ", q.front.value)
	print("2 == ", q.front.next.value)

	# front -> n1, n2, n3
	n3 = Node(3)
	q.enqueue(n3)
	print("1 == ", q.front.value)
	print("2 == ", q.front.next.value)
	print("3 == ", q.front.next.next.value)
	print("3 == ", len(q))

	# front -> n2, n3
	n = q.dequeue()
	print("1 == ", n.value)
	print("2 == ", q.front.value)
	print("3 == ", q.front.next.value)

	# front -> n3
	n = q.dequeue()
	print("2 == ", n.value)
	print("3 == ", q.front.value)
	print("1 == ", len(q))

	# front -> None
	n = q.dequeue()
	print("3 == ", n.value)
	print("None == ", q.front)

	# front -> None
	n = q.dequeue()
	print("None == ", n)
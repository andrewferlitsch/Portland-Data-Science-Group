class Queue(object):
	""" Queue Implementation (FIFO) """
	
	def __init__(self):
		self.queue = []	# initialize queue to empty dynamic array (i.e., list)

	def enqueue(self, element):
		""" Add element to queue """
		self.queue.append( element )

	def dequeue(self):
		""" Remove element from front of the queue  """
		# Empty Queue condition
		if len(self.queue) == 0:
			return None

		# Get (remember) the first element from the queue
		element = self.queue[0]
		
		# Remove (drop) the first element in the queue
		del self.queue[0]
		
		# Return the first element
		return element

# Test Driver
print("Process in sequential order tasks: A, B and C")
queue = Queue()
queue.enqueue("A")
queue.enqueue("B")
queue.enqueue("C")
e = queue.dequeue()
while e:
	print(e)
	e = queue.dequeue()
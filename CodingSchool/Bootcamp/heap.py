from heapq import heappush, heappop

class Heap(object):
	def __init__(self):
		self.heap = []	# initialize heap to empty dynamic array

	# Add element to the (sorted) heap
	def push(self, element):
		heappush(self.heap, element)

	# Remove element from front of the (sorted) heap
	def pop(self):
		 # Empty Heap condition
		if len(self.heap) == 0:
			return None

		 # Get the first element from the heap
		element = heappop(self.heap)

		# Return the first element
		return element
		
# Test Driver
print("Process in sequential order tasks: A, B and C" )
heap = Heap()
heap.push("C")
heap.push("A")
heap.push("B")
e = heap.pop()
while e:
	print(e)
	e = heap.pop()

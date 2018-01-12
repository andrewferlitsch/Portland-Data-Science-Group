class Stack(object):
	def __init__(self):
		self.stack = []	# initialize stack to empty dynamic array

	# Add element to the stack
	def push(self, element):
		self.stack.insert( 0, element )

	# Remove element from front of the stack
	def pop(self):
		 # Empty Stack condition
		if len(self.stack) == 0:
			return None

		 # Get (remember) the first element from the stack
		element = self.stack[0]

		 # Remove (drop) the first element in the stack
		del self.stack[0]

		# Return the first element
		return element

class Hanoi(object):
	towers = [None ] * 3		# Initialize 3 towers with no discs on them
	for i in range(0, 3):
		towers[i] = Stack()

	def __init__(self, ndiscs):
		self.ndiscs  = ndiscs	# the number of discs
		# initialize the first tower with discs in ascending order.
		for i in range (ndiscs, 0, -1):
			self.towers[0].push(i)
	
	def move( self, ndiscs, start, intermediate, end ):
		""" Recursive method to move ndiscs from start to end """
		# if single disk left, move it from start to end
		if ndiscs == 1:
			end.push(start.pop())
		else:
			# move the remainder of the tower to the intermediate tower 
			self.move(ndiscs - 1, start, end, intermediate)
			# move the bottom disc to the end tower
			end.push(start.pop())
			# move the remainder of the intermediate tower to the end tower 
			self.move(ndiscs - 1, intermediate, start, end)

	def play(self):
		self.move(self.ndiscs, self.towers[0], self.towers[1], self.towers[2])

	def printTowers(self):
		""" Print the disc stack on each tower """
		for i in range(0, 3):
			print("Tower " + str(i + 1))
			while True:
				disc = self.towers[i].pop()
				if disc is None:
					break
				print(disc)

# Test Driver
hanoi = Hanoi(7)
hanoi.play()
hanoi.printTowers()

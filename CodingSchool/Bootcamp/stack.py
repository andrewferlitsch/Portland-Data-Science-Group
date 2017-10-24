class Stack(object):
	def __init__(self):
		self.stack = []	# initialize stack to empty dynamic array

	def push(self, element):
		""" Add element to the stack """
		self.stack.insert(0, element)

	def pop( self ):
		""" Remove element from front of the stack """
		# Empty Stack condition
		if len(self.stack) == 0:
			return None

		 # Get (remember) the first element from the stack
		element = self.stack[0]

		 # Remove (drop) the first element in the stack
		del self.stack[0]

		# Return the first element
		return element
		

# Test Driver
print("Process in sequential order tasks: C, B and A" )
stack = Stack()
stack.push("A")
stack.push("B")
stack.push("C")
e = stack.pop()
while e:
	print(e)
	e = stack.pop()

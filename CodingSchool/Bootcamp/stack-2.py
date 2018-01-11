class Stack(object):
	def __init__( self ):
		self.stack = []	# initialize stack to empty dynamic array/list

	# Add element to the stack
	def push( self, element ):
		self.stack.append( element )

	# Remove element from front of the stack
	def pop( self ):
		length = len(self.stack)	# Get the length of the stack
		 # Empty Stack condition
		if length == 0:
			return None

		# Get (remember) the first element from the stack
		element = self.stack[ length - 1 ]

		 # Remove (drop) the first element in the stack
		del self.stack[ length - 1 ]

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
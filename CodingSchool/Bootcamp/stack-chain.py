class StackChain(object):
	def __init__(self, max):
		self.max = max	# maximum size of a stack
		self.stack = []	# initialize this stack to empty list/array.
		self.chain = None	# next stack in chain

	def push(self, element):
		""" Add element to the stack chain """
		self.stack.insert(0, element)

		# stack is less than full
		if len(self.stack) < self.max:
			self.max += 1
		# stack is full
		else:
			# Allocate the next stack in chain, if there is not one already.
			if self.chain is None:
				self.chain = stackChain(self.max)

			# Get (remember) the element from the bottom of the stack
			element = self.stack[self.max - 1]

			# Remove the element
			del self.stack[self.max - 1]
			# push the element to the next stack in the chain
			self.chain.stack.push(element)
			
	def pop(self):
		""" Remove element from the stack chain """
		# stack is empty
		if len(self.stack) == 0:
			return None

		# Get (Remember) top element in stack
		element = self.stack[0]
		# Remove the element from the stack
		del self.stack[0]

		# There is another stack in the chain
		if self.chain is not None:
			# Pop the top element from the next stack in the chain
			bottom = pop(self.chain.stack)
			# Add the element to the bottom of this stack
			self.stack.append(bottom)

		# Return the top of the stack
		return element

print("Process tasks in order: 6, 5, 4, 3, 2, 1, 0")
stack = StackChain(3);
for i in range(0, 7):
	stack.push(i)
for i in range(0, 7):
	e = stack.pop()
	print(e)
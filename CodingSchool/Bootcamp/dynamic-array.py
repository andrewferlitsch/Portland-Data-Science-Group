
class Entry(object):			
	""" Definition for an element in the dynamic array """
	
	def __init__(self, data):
		self.data = data	# Entry data
		self.link = None	# Link to next Entry in Array

class Array(object):
	""" Definition for a Dynamic Array """
	
	head = None # head of the array
	tail = None # tail of the array
	size = 0	# size of the array
	
	def __init__(self):
		self.array = None	# initialize array to empty
		self.size  = 0		# size of the dynamic array

	# Add element an element to the end of the array
	def add(self, data):
		entry = Entry(data)
		# Empty Array
		if self.tail is None:
			self.array = entry
			self.head  = entry
		# Non-empty array
		else:
			self.tail.link = entry
		
		# Set last entry to the newly added entry
		self.tail = entry

		# increment the size of the array by one
		self.size += 1
		
	def get(self, index):
		""" Get the value at the corresponding index """
		# Check for out of bounds condition
		if index > self.size - 1 or index < 0:
			return None
			
		# Step (linear) to the index position
		curr = self.head;
		for i in range( 0, index ):
			curr = curr.link
			
		return curr.data
		
	def delete(self, index):
		""" Delete the item at the corresponding index """
		# Check for out of bounds condition
		if index > self.size - 1 or index < 0:
			return False
		
		# Remove the head of the dynamic array
		if index == 0:
			# Set the head to the next head
			self.head = self.head.link
			
			# If the array is now empty, set the tail to none
			self.size -= 1
			if self.size == 0:
				self.tail = None
			
			return True
		
		# Find the element at the specified index, and remember the element before it.
		curr = self.head
		prev = None
		for i in range(0, index):
			prev = curr
			curr = curr.link
		
		# Set the next pointer of the previous element to the next pointer of the current element,
		# thus dropping this element which is between them.
		prev.link = curr.link
		
		# We deleted the tail. Set the current tail to the previous element.
		self.size -= 1
		if self.size == index:
			self.tail = prev
			
		return True
		
	def insert(self, index, data):
		""" Insert the value at the corresponding index """
		# Check for out of bounds condition
		if index > self.size - 1 or index < 0:
			return False
			
		# Adding to the tail
		if index == self.size-1:
			add( data )
			return True
		
		# Find the element at the index
		curr = self.head
		for i in range( 0, index ):
			curr = curr.link

		# Insert (after) between the current element and the next
		e = Entry(data)
		e.link = curr.link
		curr.link = e
		
		self.size += 1
		return True

# Test Driver			
array = Array()
for i in range(0, 7):
	array.add( i )

print("Add: Expect 0,1,2,3,4,5,6")
for i in range(0, array.size):
	print(array.get(i))

array.delete( 4 )
print("Delete: Expect 0,1,2,3,5,6")
for i in range(0, array.size):
	print(array.get(i))
	
array.insert(3, 4)
print("Insert: Expect 0,1,2,3,4,5,6")
for i in range(0, array.size):
	print(array.get(i))

array.delete( 0 )
print("Delete: Expect 1,2,3,4,5,6")
for i in range(0, array.size):
	print(array.get(i))

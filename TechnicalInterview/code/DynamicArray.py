# Definition for an element in the dynamic array
class Element:
	# Constructor: set the node data
	def __init__(self, value):
		self.value   = value	# node data

# Definition for a Dynamic Array
class DynamicArray:
	# The size (number of elements) of the array
	def Size():
		return size;

	# Add an element to the end of the dynamic array
	def Add( value ):
		e = Element(value)
		
		# Set the next element of the previous tail to the new element
		if tail != None:
			tail.next = e

		# set the current tail to the new element
		tail = e
		
		# If there is no head (first element), set the head to the new element.
		if head == None:
			head = e
		
		# Increment the size of the array
		size += 1
		
	# Get the value at the corresponding index
	def Get( index ):
		# Check for out of bounds condition
		if index > size - 1 or index < 0:
			return None
			
		# Step (linear) to the index position
		curr = head;
		for i in range( 0, index ):
			curr = curr.next
			
		return curr.value

	def Delete( index ):
		# Check for out of bounds condition
		if index > size - 1 or index < 0:
			return false;
		
		# Remove the head of the dynamic array
		if index == 0:
			# Set the head to the next head
			head = head.next;
			
			# If the array is now empty, set the tail to null
			size -= 1
			if size == 0:
				tail = null
			
			return true
		
		# Find the element at the specified index, and remember the element before it.
		curr = head
		prev = null
		for i in range( 0, index ):
			prev = curr
			curr = curr.next
		
		# Set the next pointer of the previous element to the next pointer of the current element,
		# thus dropping this element which is between them.
		prev.next = curr.next
		
		# We deleted the tail. Set the current tail to the previous element.
		size -= 1
		if size == index:
			tail = prev
			
		return true
		
	def Insert( index, value ):
		# Check for out of bounds condition
		if index > size - 1 or index < 0:
			return false
			
		# Adding to the tail
		if index == size-1:
			Add( value )
			return true
		
		# Find the element at the index
		curr = head
		for i in range( 0, index ):
			curr = curr.next

		# Insert (after) between the current element and the next
		e = Element( value )
		e.next = curr.next
		curr.next = e
		
		size += 1
		return true
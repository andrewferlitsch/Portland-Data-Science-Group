class Entry(dict):
	""" Definition for an Entry in the Hash Table (Dictionary) """
		
	def __init__(self, key, value):
		""" Constructor 
			key = the key value
			value = the value for this node
			next = the next entry
		"""
		super().__init__(key=key, value=value, next=None)

	def compare(self, key):
		""" Comparator for checking if key matches this entry. """
		return (self["key"] == key)
		
class HashLP(object):
	RANGE = 0    	# the range of the index.
	_index    = []  # the index
	
	def __init__(self, range):
		""" constructor """
		# set the index range and allocate the index
		self.RANGE = range
		self._index = [None] * self.RANGE
	 
	def index(self, key):
		""" Map the key into an index within the set range """
		return key % self.RANGE	
		
	def add(self, key, value):
		""" Add a key/value entry to the index """
		# Linear probe the entries for an empty or matching slot.
		for ix in range(self.index(key), self.RANGE):
			# there is no entry at this index, add the key/value
			if self._index[ix] is None:
				self._index[ix] = Entry(key, value)
				break
				
			# Entry found, update the value
			if self._index[ix].compare(key):
				self._index[ix]["value"] = value
				break

	def get( self, key ):
		""" Get the value for the key """
		ix = self.index(key)
		
		# Linear probe the entries for an empty or matching slot.
		for ix in range(self.index(key), self.RANGE):
			# there is no entry at this index, return not found
			if self._index[ix] is None:
				return None
				
			# Entry found
			if self._index[ix].compare(key):
				return self._index[ix]["value"]
	
		# not found
		return None
		
# Test Drivdr
index = HashLP(100)
index.add(17,   100)
index.add(117,  600) # this will cause a collision
index.add(228,  300)
index.add(675,  400)
index.add(2298, 500)
index.add(117,  200) # this will cause an update
print(index.get(17))
print(index.get(117))
print(index.get(228))
print(index.get(675))
print(index.get(2298))
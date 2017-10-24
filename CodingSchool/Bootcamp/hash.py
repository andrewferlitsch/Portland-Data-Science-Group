
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
		
class Hash(object):
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
		ix = self.index(key)
		
		# There is no entry at this index, add the key/value
		if self._index[ix] is None:
			self._index[ix] = Entry(key, value)
		else:
			# See if the key already exists in the chain
			next = self._index[ix]
			while next is not None:
				# Entry found, update the value
				if next.compare(key):
					next["value"] = value
					break
				next = next["next"]
			
			# no entry found, add one
			if next is None:
				# Add the entry to the front of the chain
				add = Entry(key, value)
				add["next"] = self._index[ix]
				self._index[ix] = add
	
	def get(self, key):
		""" Get the value for the key """
		ix = self.index(key)
		
		# See if the key exists in the chain at this entry in the index
		next = self._index[ix]
		while next is not None:
			# Entry found, update the value
			if next.compare(key):
				return next["value"]
			next = next["next"]
	
		# not found
		return None	
		
# Test Drivdr
index = Hash(100)
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

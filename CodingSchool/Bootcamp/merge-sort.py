def mergeSort(data):
	# allocate space for a temporary copy of the data
	tdata = [0] * len(data);

	# sort the data (pass in the temporary copy so routine is thread safe)
	mSort(data, 0, len(data) - 1, tdata)
	return data
	
def mSort(data, low, high, tdata):
	# if the partition has more than one element, then recursively divide the partition and merge the parts back in
	if low < high:
		mid = low + (high - low) // 2	# midway index (integer division)
			 
		# sort the lower (first) half partition
		mSort(data, low, mid, tdata)
		# sort the upper (second) half partition
		mSort(data, mid + 1, high, tdata)
			
		# merge the partitions together
		merge(data, low, mid, high, tdata)
	
def merge(data, low, mid, high, tdata):
	# make a temporary copy of the two separately sorted partitions
	for i in range(low, high + 1):
          		 tdata[i] = data[i]    
		
	# starting from the beginning of the first partition, iteratively search for the next lowest
	# number from the lower (first) and higher (second) and move into current position in the 
	# lower (first) partition
	i = low
	k = low
	j = mid + 1
	while i <= mid and j <= high:        
		if tdata[i] <= tdata[j]:
			data[k] = tdata[i]
			i += 1
		else:
			data[k] = tdata[j]
			j += 1
		k += 1
		
	# Copy any remaining elements back into the first partition
	while i <= mid:
		data[k] = tdata[i]
		k += 1
		i += 1


# Test Driver
data = [ 5, 2, 4, 1, 6, 3 ]
data = mergeSort(data)
for i in range(0, len(data)):
	print(data[i])
def quickSort(data):
	qSort(data, 0, len(data)  - 1)
	return data
	
def qSort(data, low, high):
	i     = low                       	# starting lower index
	j     = high                     	# starting higher index
	mid   = int(low + (high - low) / 2) # midway index
	pivot = data[ mid ]              	# pivot, value at the midway index
		
	# Divide the array into two partitions
	while i <= j:
		# keep advancing (ascending) the lower index until we find a value that is not less than the pivot
		# we will move this value to the right half partition.
		while data[i] < pivot:
			i += 1
		# keep advancing (descending) the higher index until we find a value that is not greater than the pivot
		# we will move this value to the left half partition.
		while data[j] > pivot:
			j -= 1

		# if the lower index has past the higher index, there is no values to swap
		# otherwise, swap the values and continue
		if i <= j:
			# swap the higher than pivot value on the left side with the lower than pivot value on the right side
			temp  = data[i]
			data[i] = data[j]
			data[j] = temp

			# advance the lower and higher indexes accordingly and continue
			i += 1
			j -= 1       

	# recursively sort the two partitions if the index has not crossed over the pivot index
	if low < j:
		qSort(data, low, j)
	if i < high:
		qSort(data, i, high)

# Test Driver
data = [ 5, 2, 4, 1, 6, 3 ]
data = quickSort(data)
for i in range(0, len(data)):
	print(data[i])
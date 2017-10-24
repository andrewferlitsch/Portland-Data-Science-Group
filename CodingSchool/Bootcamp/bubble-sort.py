def bubbleSort(data):
	length = len(data)

	swapped = True
	# continue to repeat until no more adjacent values are swapped
	while swapped:
		swapped = False
		# Make a scan through the list
		for i in range(0, length - 1):
			# Compare adjacent values. If the first value > second value, swap the values.
			if data[i] > data[i + 1]:
				swap = data[ i ]
				data[i] = data[i + 1]
				data[i + 1] = swap
				swapped = True
	return data

	
# Test Driver
data = [ 5, 2, 4, 1, 6, 3 ]
data = bubbleSort(data)
for i in range( 0, len(data) ):
	print(data[i])
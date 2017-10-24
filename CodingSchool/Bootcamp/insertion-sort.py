def insertionSort(data):
	length = len(data)

	# iterate through the list for each element except the first element
	for i in range(1, length):	
		# starting with the current element, remove/insert proceeding 
		# elements so they are in sorted order 
		for j in range(i, 0, -1):
			# swap adjacent elements 
			if data[j] < data[j - 1]: 
				temp = data[j] 
				data[j] = data[j -1] 
				data[j - 1] = temp 
	
	return data

# Test Driver
data = [ 5, 2, 4, 1, 6, 3 ]
data = insertionSort(data)
for i in range(0, len(data) ):
	print(data[i])
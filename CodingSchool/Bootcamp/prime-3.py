print("1")	
print("2")	
print("3")
for number in range(5, 101, 2):
	# Attempt to divide this number by every number between 3 and one third less than itself
	third = int((number / 3 )) + 1
	for div in range(3,third,2):
		# use the mod function to see if their is a remainder in the division
		if (number % div) == 0:
			break
	else:
		print(number)
		

			
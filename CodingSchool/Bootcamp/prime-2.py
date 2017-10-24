# skip even numbers
print("1")	
print("2")	
print("3")
for number in range(5, 101, 2):
	# Attempt to divide this number by every number between 2 and one less than itself
	for div in range(2,number):
		# use the mod function to see if their is a remainder in the division
		if (number % div) == 0:
			break
	else:
		print(number)

# skip even numbers and dividing by 2
print( "1" )	
print( "2" )	
print( "3" )
for number in range(5, 101, 2):
	# Attempt to divide this number by every number between 3 and one less than itself
	for div in range(3,number,2):
		# use the mod function to see if their is a remainder in the division
		if (number % div) == 0:
			break
	else:
		print(number)


			
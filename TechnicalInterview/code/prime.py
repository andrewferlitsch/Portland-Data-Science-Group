print( "Prime Numbers between 1 and 100")

# Prime Numbers are numbers only divisible by 1 and itself.
print( "1" )	
print( "2" )

# Primes for numbers above 2
for number in range( 3, 100 ):
	# Attempt to divide this number by every number between 2 and one less than itself
	for div in range(2,number-1):
		# use the mod function to see if their is a remainder in the division
		if ( number % div ) == 0:
			break
	else:
		print(number)
		
for number in range( 5, 100, 2 ):
	# Attempt to divide this number by every number between 2 and one less than itself
	for div in range(2,number-1):
		# use the mod function to see if their is a remainder in the division
		if ( number % div ) == 0:
			break
	else:
		print(number)
		

			
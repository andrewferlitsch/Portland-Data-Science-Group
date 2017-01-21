
# Multiple using only + and = operator
def Mul( x, y ):
	result = 0  # accumlator for the result
	repeat = 0  # accumlator for the number of times to repeat the addition
		
	while ( True ):
		# starting at zero, exit the loop after y+1 times
		repeat += 1
		if repeat == y + 1:
			break
		# accumulate the result by adding x to the accumulator
		result += x;

	return result
	
# Exponent using only + and = operator
def Exp( x, e ):
	# x raised to power of 0 is always 1
	if e == 0:
		return 1
		
	result = 1	# accumlator for the result
	repeat = 0	# accumlator for the number of times to repeat the multiplication
	while ( True ):
		repeat += 1
		if repeat == e + 1:
			break
		result = Mul( x, result );

	return result

print( Exp( 3, 4 ) )

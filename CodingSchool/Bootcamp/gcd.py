def gcd(x, y):
	""" Euclid's algorithm as an iterative solution """
	# continue until the division of of the two numbers does not leave a remainder (evenly divisible)
	while y > 0:
		# calculate the remainder of the division by between x and y
		remainder = (y % x)
			
		# swap the value of x with y
		x = y
			
		# set y to the remainder
		y = remainder
		
	return x

def gcdr(x, y):
	""" Euclid's algorithm as a recursive solution	"""
	# return the current value of x when y is reduced to zero.
	if y == 0:
		return x
	# recursive call, swapping x with y, and setting y to remainder of y divided by x
	return gcdr(y, (y % x))
	
def lcm(x, y):
	""" Calculate the least common multiple """
	return int((x * y) / gcd(x, y))
	
print("GCD " + str(gcd(12, 16)))
print("GCD " + str(gcdr(12, 16)))
print("LCM " + str(lcm(6, 8)))


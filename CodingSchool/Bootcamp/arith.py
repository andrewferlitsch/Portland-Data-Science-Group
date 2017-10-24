def mul(x, y):
	# multiple by a negative number
	if y < 0:
		y = -y	# turn y into positive number for loop increment
		x = -x	# turn x into negative number for result accumulator
		
	# repeat adding x to result y times
	return sum(x for i in range(y))

	
def exp(x, y):
	""" if y = 0, return 1
		else recursively multiply result by x, y times
	"""
	return 1 if y < 1 else x * exp( x, y-1 )

# Test Driver
r1 = mul(0, 2)
r2 = mul(3, 5)
r3 = mul(-2, 4)
print("Multiple 0, 15, -8")
print(r1, r2, r3)

r1 = exp(2, 0)
r2 = exp(2, 3)
print("Multiple 1, 8" )
print(r1, r2)

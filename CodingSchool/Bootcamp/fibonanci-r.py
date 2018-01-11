""" Fibonacci Sequence
# Is a sum (addition) of the previous two numbers in the sequence, as
#	F(n) = F(n-1) + F(n-2)
# Where
# 	F(0) = 0 and F(1) = 1
# Hence 
#	F(2) = 0 + 1 [F(1) + F(0)] = 1
#	F(3) = 1 + 1 [F(2) + F(1)] = 2
"""

def fibonacci(n):
	""" Recursive Solution """
	# F(0) and F(1) case
	if n==0:
		return 0
	if n==1:
		return 1
	return fibonacci(n-1) + fibonacci(n-2)

# Fibonacci Sequence to F(10)
for number in range(0, 10):
	print(fibonacci(number), end=' ')
print("")

	 
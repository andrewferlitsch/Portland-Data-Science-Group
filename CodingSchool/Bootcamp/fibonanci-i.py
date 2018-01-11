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
	""" Iterative Solution """
	# F(0) and F(1) case
	if n==0:
		return 0
	if n==1:
		return 1
	fn 		  = 0	# current value for F(n)
	f_minus_1 = 1	# current value for F(n-1)
	f_minus_2 = 0	# current value for F(n-2)
	for i in range(2, n+1):
		fn 		  = f_minus_1 + f_minus_2	# F(n) = F(n-1) + F(n-2)
		f_minus_2 = f_minus_1				# next F(n-2)
		f_minus_1 = fn						# next F(n-1)
	return fn
		
# Fibonacci Sequence to F(10)
for number in range(0, 10):
	print(fibonacci(number), end=' ')
print("")
	 
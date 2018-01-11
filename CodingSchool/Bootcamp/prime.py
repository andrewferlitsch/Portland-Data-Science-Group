print("Prime Numbers between 1 and 100")

# Prime Numbers are numbers only divisible by 1 and itself.
print("1, 2", end='')

# Primes for numbers above 2
for number in range(3, 101):
	# Attempt to divide this number by every number between 2 and one less than itself
	for div in range(2, number):
		if  (number % div) == 0:
			break
	else:
		print(", " + str(number), end='')

print("")	# newline

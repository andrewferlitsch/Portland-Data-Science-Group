def charOccur(s):
	counter = [0] * 96	# codes 32 .. 127 are printable (so skip first 32)
	length = len(s)
	# use counter as an accumulator while we count each character in string
	for i in range(0, length):
		counter[ord(s[i]) - 32] += 1	# offset ascii code by 32
	return counter

def dupChar(s):
	# Get the character occurrences
	dup = charOccur(s)
	# Mask out all single count occurrences
	length = len(dup)
	for i in range(0, length):
		dup[i] &= ~0x01;
	return dup

# Test Driver
res = charOccur( "jack and jill jumped over the hill to fetch a pale of water")
for i in range(32, 128):
	if res[i - 32] > 0:
		print( chr(i) + ": " + str(res[i - 32]))
res = dupChar( "jack and jill jumped over the hill to fetch a pale of water")
for i in range(32, 128):
	if res[i - 32] > 0:
		print( chr(i) + ": " + str(res[i - 32 ]))

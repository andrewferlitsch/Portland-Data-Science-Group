def palindrome(s):
	length = len(s)
	for i in range(0, int(length / 2)):
		if s[i] != s[length - i - 1]:
			return False
	return True

def palindromeP( s ):
	length = len(s)
	i = 0
	j = length - 1
	while i < j:
		if isPunctOrSpace(s[i]):
			i += 1
			continue

		if isPunctOrSpace(s[j]):
			j -= 1
			continue

		if s[i].lower() != s[j].lower():
			return False
		i += 1 
		if j != i:
			j -= 1

	return True
	
def isPunctOrSpace(c):
	val = ord(c)
	return  (val >= 32 and val <= 47) or (val >= 58 and val <= 64) or (val >= 91 and val <= 96) or (val >= 123 and val <= 126)

# Test Driver
print(palindrome("noon"))
print(palindrome("rotator"))
print(palindrome("notone"))
print(palindromeP("my gym"))
print(palindromeP("Red rum, sir, is murder"))
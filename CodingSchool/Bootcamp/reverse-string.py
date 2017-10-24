def reverseString(original):
	""" Reverse the string by taking a slice (:) of the whole string
		and reverse the order (:-1)
	"""
	return original[::-1]

def reverseStringR(original):
	if len(original) > 1: 
		return reverseStringR(original[1:]) + original[0] 
	return original

print(reverseString( "abcdefg" ))
print(reverseStringR( "abcdefg" ))
""" HTTP Help Routines """

class ResponseCode:
	""" Definition for Response Codes (Constants) """
	OK			  = [ 200, "OK" ]
	BAD_REQUEST   = [ 400, "Bad Request" ]
	NOT_SUPPORTED = [ 403, "Request Not Supported" ]
	
class HTTPConstants:
	VERSION 	= "HTTP/1.1"	# HTTP Version
	CRLF    	= "\r\n"		# delinator in HTTP
	GET_REQUEST = "GET"			# GET method request
	
debug = 0
	
def read2CRLF(conn):
	""" Read a data packet until we encounter a CRLF """
	data = b''
	while True:
			# Block waiting for data from the client. Read 1 byte (buffered) at a time
			byte = conn.recv(1)
			
			# Found CRLF separator
			if byte == b'\r':
				byte = conn.recv(1)
				if byte != b'\n':
					raise Exception("Ill-formed packet")
				break
			
			# incrementially assemble the data
			data += byte
	if debug == 1: print(data)
	return data
	
def expectCRLF(conn):
	""" Expect a CRLF """
	if conn.recv(1) != b'\r':
		raise Exception("Ill-formed packet")
	if conn.recv(1) != b'\n':
		raise Exception("Ill-formed packet")
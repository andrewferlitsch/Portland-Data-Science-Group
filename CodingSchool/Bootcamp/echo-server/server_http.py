# import needed libaries from the standard libary
import socket

debug = 1	# use the debug level to control which debugging statements to display

class ResponseCode:
	""" Definition for Response Codes (Constants) """
	OK			  = [ 200, "OK" ]
	BAD_REQUEST   = [ 400, "Bad Request" ]
	NOT_SUPPORTED = [ 403, "Request Not Supported" ]

def server():
	""" Client side of a socket """
	
	# create a socket (default to a TCP/IP socket)
	s = socket.socket()         
	if debug == 0: print(s)
	
	
	# we want to bind the server end of the socket to this machine,
	# so first get the host name of this machine
	host = socket.gethostname() # Get local machine name
	if debug == 0: print(host)
	
	# bind the socket to this host. Specify tuple: (hostname, port)
	# Note, most be the same port as the client uses.
	s.bind( (host, 12345) )        # Bind to the port

	# Set number of client connections to listen to.
	s.listen(5)
	
	# loop forever listening for client connections
	while True:
		# block (wait) for a client connection
		conn, addr = s.accept()     # Establish connection with client.
		
		# parse the HTTP request packet as the data arrives from the client
		message, data = parse_packet(conn)
		
		if debug == 0: print("MESSAGE: ", message)
		conn.send(message.encode())
		conn.close()     

		# Secret message to quit the server
		if data == b'q':
			break
			
def parse_packet(conn):
	""" Parse the HTTP request packet """
	
	status = ResponseCode.OK	# status code
	data   = b''				# data extracted
	
	# Parse the packet into a HEAD and BODY section
	#	HEAD
	#	BODY
	try:
		parse_head(conn)
	except NotImplementedError:
		# Use NOT SUPPORTED for request type that is not supported by the server
		status = ResponseCode.NOT_SUPPORTED
	except:
		# Use BAD REQUEST indicate malformed request
		status = ResponseCode.BAD_REQUEST
	else:
		# Get the data from the body
		try:
			data = parse_body(conn)
		except:
			# Use BAD REQUEST to indicate malformed body
			status = ResponseCode.BAD_REQUEST
	
	# construct a response
	# Send back to the server:
	#	response packet
	#	the data sent by the client
	return make_response(status, data.decode()), data
	
def parse_head(conn):
	""" Parse the HEAD section of a packet (as it arrives from the client) """
	if debug == 1: print("START HEAD")
	
	# request
	data = read2CRLF(conn)
			
	# Parse the request portion
	#	head = method <SP> http-version
	msg = data.decode()
	words = msg.split(' ')
	if len(words) != 2:
		raise Exception("Malformed head/request")
	if words[0] == 'GET':
		pass
	else:
		raise NotImplementedError("Only GET supported")
		
	if words[1] != 'HTTP/1.1':
		raise Exception("Only HTTP/1.1 supported")
	
	# headers
	data = read2CRLF(conn)
			
	# TODO: PARSE the heading portion (not needed for this assignment)
	
	# expect CRLF
	expectCRLF(conn)
		
	if debug == 1: print("END HEAD")
	
def parse_body(conn):
	""" Parse the BODY section of a packet (as it is streamed in) """
	if debug == 1: print("START BODY")
	
	# body
	data = read2CRLF(conn)
	
	# expect CRLF
	expectCRLF(conn)
		
	if debug == 1: print("END BODY")
	
	return data
	
def make_response( status, data ):
	""" Construct a HTTP response packet to send back to the client 
		HEAD
		<CRLF>
		BODY
		<CRLF>
	"""
	
	# Response HEAD
	# Status-Line = HTTP-Version <SP> Status Code <SP> Reason <CRLF>
	response = "HTTP/1.1 " + str(status[0]) + " " + status[1] + "\r\n"
	
	# Insert CRLF between HEAD and BODY
	response += "\r\n"
	
	# Response BODY
	# body = echo <CRLF>
	response += data + "\r\n"
	
	# End packet with CRLF
	response += "\r\n"
	
	if debug == 1: print("RESPONSE: " + response)
	return response
	
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
   
# can be called from command line and from non-command line
server()
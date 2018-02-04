# import needed libaries from the standard libary
import socket

# import common routines and constants
from http import ResponseCode, HTTPConstants, read2CRLF, expectCRLF

debug = 1	# use the debug level to control which debugging statements to display

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
		resource = parse_head(conn)
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
	
	# Special Case: treat root directory request as an echo request
	if resource == '/':
		body = data.decode()
	else:
		body = get_resource( resource )
	
	# construct a response
	# Send back to the server:
	#	response packet
	#	the data sent by the client
	return make_response(status, body), data
	
def parse_head(conn):
	""" Parse the HEAD section of a packet (as it arrives from the client) """
	if debug == 1: print("START HEAD")
	
	# request
	data = read2CRLF(conn)
			
	# Parse the request portion
	#	head = method <SP> resource <SP> http-version
	msg = data.decode()
	words = msg.split(' ')
	if len(words) != 3:
		raise Exception("Malformed head/request")
	if words[0] == HTTPConstants.GET_REQUEST:
		pass
	else:
		raise NotImplementedError("Only GET supported")
		
	# the resource being requested
	resource = words[1]
		
	if words[2] != HTTPConstants.VERSION:
		raise Exception("Only HTTP/1.1 supported")
	
	# headers
	data = read2CRLF(conn)
			
	# TODO: PARSE the heading portion (not needed for this assignment)
	
	# expect CRLF
	expectCRLF(conn)
		
	if debug == 1: print("END HEAD")
	
	return resource
	
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
	response = HTTPConstants.VERSION + " " + str(status[0]) + " " + status[1] + HTTPConstants.CRLF
	
	# Insert CRLF between HEAD and BODY
	response += HTTPConstants.CRLF
	
	# Response BODY
	# body = echo <CRLF>
	response += data + HTTPConstants.CRLF
	
	# End packet with CRLF
	response += HTTPConstants.CRLF
	
	if debug == 1: print("RESPONSE: " + response)
	return response
	
def get_resource( resource ):
	""" """
	return None
   
# can be called from command line and from non-command line
server()
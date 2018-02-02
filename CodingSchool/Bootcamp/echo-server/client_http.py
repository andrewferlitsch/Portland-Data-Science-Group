# import needed libaries from the standard libary
import sys
import socket

debug = 0	# use the debug level to control which debugging statements to display

class HTTPConstants:
	VERSION 	= "HTTP/1.1"	# HTTP Version
	CRLF    	= "\r\n"		# delinator in HTTP
	GET_REQUEST = "GET"			# GET method request

def client(message):
	""" Client side of a socket """
	
	# create a socket (default to a TCP/IP socket)
	s = socket.socket()
	if debug == 0: print(s)
	
	# we want to connect the client end of the socket to this machine,
	# so first get the host name of this machine
	host = socket.gethostname() # Get local machine name
	if debug == 0: print(host)
	
	# connect the socket to this host. Specify tuple: (hostname, port)
	# Note, most be the same port as the server uses.
	try:
		s.connect( ( host, 12345 ) )
	except:
		# if the connection fails to the server (aka, you forgot to start it,
		# then you will get an exception
		print("Connection Failed")
	else:
		# successfully made a connection
		
		# Create an HTTP request packet to send the message
		packet = make_packet( message, host )
		
		# we need to convert our string into an encoding which is used for
		# sending data over the internet. The string method encode() does this
		# for us.
		msg = str.encode(packet) 
		if debug == 0: print(msg)
		
		# now send the encoded message to the server
		s.sendall( msg )
		
		# parse the HTTP response packet as it arrives from the server
		#	response packet
		#	the data sent by the server
		response, data = parse_response( s )
		
		# close the connection
		s.close()
		
		if data.decode() == message:
			print("OK: got echo")
			return True
		else:
			print("FAILED: got some other message: " + result )
			return False
			
def make_packet(message, host):
	""" Make a HTTP request packet 
		request
		headers
		<CRLF>
		message
		<CRLF>
	"""
	RESOURCE = "/"				# dummy resource
	
	# First line is the request
	request = HTTPConstants.GET_REQUEST + " " + RESOURCE + " " + HTTPConstants.VERSION + HTTPConstants.CRLF
	
	# Next are the headers
	headers = "Host: {0}".format(host) + HTTPConstants.CRLF
	
	# Construct the head
	head = request + headers
	
	# Construct the body
	body = message + HTTPConstants.CRLF
	
	# Assembly into a packet, where the head and body (message) are separated by a blank line (CRLF), and the EOM is
	# denoted by a blank line
	return head + HTTPConstants.CRLF + body + HTTPConstants.CRLF
	
def parse_response(conn):
	""" Parse a HTTP response packet 
		status-line
		<CRLF>
		body
		<CRLF>
	""" 
	
	# HEAD
	head = read2CRLF(conn)
	
	if debug == 0: print("STATUS LINE: ", head )
	
	# Tokens in the status line are separated by spaces
	# status_line = http-version <SP> status_code <SP> Reason
	status_line = head.decode().split(' ')
	
	# Parse the status line
	if len(status_line) < 3:
		raise Exception("Malformed Response Packet")
		
	if status_line[0] != HTTPConstants.VERSION:
		raise Exception("Malformed Response Packet")
	
	# CRLF separation between HEAD and BODY
	expectCRLF(conn)
	
	# BODY
	data = read2CRLF(conn)
	
	response = [ status_line[1], status_line[2] ]
	
	# return the data in the body
	return response, data
	
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
	
	
# if this script is called from the command line, then __name__ is defined to "__main__"
if __name__ == "__main__":
	# since it is the command line, I can safely get a command line argument 
	# (sys.argv[1] is the first command line argument)
	if len(sys.argv) != 2:
		print("Usage: client message")
	else:
		client(sys.argv[1])
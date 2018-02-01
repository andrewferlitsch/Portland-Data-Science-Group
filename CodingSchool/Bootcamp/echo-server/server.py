# import needed libaries from the standard libary
import socket

debug = 0	# use the debug level to control which debugging statements to display

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
		
		message = b''
		while True:
			# Block waiting for data from the client. Read 1 byte (buffered) at a time
			data = conn.recv(1)
			
			# If message is empty, then client closed the connection
			if data == b'':
				break
			# If message is only LF, then it is the end of message (EOM)
			if data ==  b'\n':
				break
				
			# Append the read byte to the message received
			message += data
			if debug == 1: print("DATA: ", data )

		
		if debug == 0: print("MESSAGE: ", message)
		conn.send(message)
		conn.close()     

		# Secret message to quit the server
		if message.decode() == 'q':
			break
   
# can be called from command line and from non-command line
server()
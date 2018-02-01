# import needed libaries from the standard libary
import sys
import socket

debug = 0	# use the debug level to control which debugging statements to display

def client(eom, message):
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
		# we need to convert our string into an encoding which is used for
		# sending data over the internet. The string method encode() does this
		# for us.
		msg = str.encode(message) 
		
		# now send the encoded message to the server
		s.sendall( msg )
		
		# we need to tell the server that ths is the end of the message.
		
		# Method 1: implicit by closing the connection
		if eom == "close":
			s.close()
			return
		# Method 2: send a marker (special ending string)
		elif eom == "LF":
			# we send an empty line (LF) to indicate an EOM
			s.send( str.encode( "\n" ) )
		
		# wait for the server to echo back the same message. We expect the length of
		# the message to be the same as what we sent.
		raw = s.recv( len(message) )
		
		# decode the message which comes in encoded for the internet into a string
		result = raw.decode()
		
		# close the connection
		s.close()
		
		if result == message:
			print("OK: got echo")
			return True
		else:
			print("FAILED: got some other message: " + result )
			return False	
	
# if this script is called from the command line, then __name__ is defined to "__main__"
if __name__ == "__main__":
	# since it is the command line, I can safely get a command line argument 
	# (sys.argv[1] is the first command line argument)
	if len(sys.argv) <= 2:
		print("Usage: client EOM message")
	else:
		client(sys.argv[1], sys.argv[2])
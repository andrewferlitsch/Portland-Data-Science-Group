
# Definition for a Task element in a Queue
class Task:
	next = None
	
	# constructor, task represents the task to be performed
	def __init__( self, task, priority ):
		self.task = task
		self.priority = task
	
	# Get the task's priority
	def GetPriority(self):
		return self.priority
	
	# Set the task's priority
	def Priority( self, priority ):
		self.priority = priority
	
	# Get the next task this element is chained to
	def GetNext(self):
		return self.next
	
	# Set the next task this element is chained to
	def Next( self, task ):
		self.next = task
	
	# Action to take when task is processed
	def Action( self ):
		print( self.task )
		
# Definition for a Queue
class Queue:
	head = None
	tail = None
	
	# Check if Queue is empty
	def Empty(self):
		if self.head == None:
			return True
		return False
	
	# Add a task to the queue
	def Add( self, task ):
		# the queue is empty, set head and tail to the task
		if self.Empty():
			self.head = self.tail = task
		# otherwise, add it as the new tail
		else:
			self.tail.Next( task )
			self.tail = task

	# Add a task to the queue
	def Add( self, task ):
		# the queue is empty, set head to the task
		if self.Empty():
			self.head = task
		# otherwise, insert the task into the queue according to the task's priority
		else:
			self.Insert( task )

	# Insert a task into the queue based on priority
	def Insert( self, task ):
		# Start at the head of the chain to search where to insert the task
		curr = self.head
		prev = self.head
		while curr != None:
			# Find a task whose's priority is less than the new task
			if task.GetPriority() > curr.GetPriority():
				# Insert the task in front of the current task.
				task.Next( curr )
				
				# If inserting in front of the head of the queue, 
				# make the new task the head of the queue
				if curr == self.head:
					head = task
				# Otherwise, set the previous element's next to the new task
				else:
					prev.Next( task )
				break
			
			prev = curr;
			curr = curr.Next();
		
		# Add to the tail (end) of the queue
		if curr == None:
			prev.Next( task )
	
	# Remove the top of the queue and process the task
	def Pop( self):
		# Queue is empty
		if self.Empty():
			return
			
		# Process the task here
		self.head.Action()
		
		# Move the head to the next element.
		self.head = self.head.GetNext()
		if self.Empty():
			self.tail = None

print("Process in sequential order tasks: B, C and A" )
queue = Queue()
queue.Add( Task( "A", 1 ) )
queue.Add( Task( "B", 2 ) )
queue.Add( Task( "C", 3 ) )
queue.Pop()
queue.Pop()
queue.Pop()


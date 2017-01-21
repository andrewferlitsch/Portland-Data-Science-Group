# Definition for a Task element in a Stack
class Task:
	task = None  # the task to perform
	next = None  # the next task in the stack

	# constructor, task represents the task to be performed
	def __init__( self, task ):
		self.task = task
	
	# Get the next task this element is chained to
	def GetNext(self):
		return self.next
	
	# Set the next task this element is chained to
	def Next( self, task ):
		self.next = task;
	
	# Action to take when task is processed
	def Action( self ):
		print( self.task )

# Definition for a Stack
class Stack:
	top = None   # top of the stack
	
	# Check if the Stack is empty
	def Empty(self):
		if self.top == None:
			return True
		return False
	
	# Push the task to the top of the stack
	def Push( self, task ):
		# Set the task next pointer to the current top
		task.Next( self.top )
		# Set the top to this task
		self.top = task
	
	# Pop the task from the top of the stack
	def Pop( self ):
		# Stack is Empty
		if self.Empty():
			return

		# Perform the action for the task
		self.top.Action()
		
		# Move the top to the current top's next pointer.
		self.top = self.top.GetNext()

print("Process tasks in order: A, B and C" )
stack = Stack()
stack.Push( Task( "C" ) )
stack.Push( Task( "B" ) )
stack.Push( Task( "A" ) )
stack.Pop()
stack.Pop()
stack.Pop()
// Definition for a Task element in a Queue
class Task {
	private Object task;        // the task to perform
	private Task   next = null; // the next task in the queue

	// constructor, task represents the task to be performed
	public Task( Object task ) {
		this.task = task;
	}
	
	// Get the next task this element is chained to
	public Task Next() {
		return next;
	}
	
	// Set the next task this element is chained to
	public void Next( Task task ) {
		next = task;
	}
	
	// Action to take when task is processed
	public void Action() {
		System.out.println( task );
	}
}

// Definition for a Stack
public class Stack {
	private Task top;	// top of the stack
	
	// Check if the Stack is empty
	private boolean Empty() {
		if ( top == null )
			return true;
		return false;
	}
	
	// Push the task to the top of the stack
	public void Push( Task task ) {
		// Set the task next pointer to the current top
		task.Next( top );
		// set the top to this task
		top = task;
	}
	
	// Pop the task from the top of the stack
	public void Pop() {
		// Stack is Empty
		if ( Empty() )
			return;
			
		// Perform the action for the task
		top.Action();
		
		// Move the top to the current top's next pointer.
		top = top.Next();
	}

	public static void main(String[] args) {
		System.out.println("Process tasks in order: A, B and C" );
		Stack stack = new Stack();
		stack.Push( new Task( "C" ) );
		stack.Push( new Task( "B" ) );
		stack.Push( new Task( "A" ) );
		stack.Pop();
		stack.Pop();
		stack.Pop();
	}
}
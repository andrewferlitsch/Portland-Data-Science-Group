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
	
	private Task   prev = null; // the previous task in the stack
	
	// Get the previous task this element is chained to
	public Task Prev() {
		return prev;
	}
	
	// Set the previous task this element is chained to
	public void Prev( Task task ) {
		prev = task;
	}
}

// Definition for a Chain of Stacks
public class StackChain {
	private Task top    = null;      // top of the stack
	private Task bottom = null;      // bottom of the stack
	private final int max;           // maximum size of the stack
	private int size;                // current size of the stack
	private StackChain chain = null; // next stack in the chain
	
	// Constructor: instantiate a stack in a chain, specifying the maximum size of the stack.
	public StackChain( int max ) {
		this.max = max;
	}
	
	// Check if the Stack is empty
	private boolean Empty() {
		if ( top != null )
			return false;
		return true;
	}
	
	// Push the task to the top of the stack
	public void Push( Task task ) {
		// Set the task next pointer to the current top
		task.Next( top );
		
		// Chain the current top back to the task
		if ( top != null )
			top.Prev( task );
			
		// Set the top to this task
		top = task;
		
		// only element on the stack, set the bottom to the top
		if ( ++size == 1 )
			bottom = top;
			
		// overflowed the maximum size of the stack
		if ( size > max ) {
			// Create a new stack in the chain of the same maximum size
			if ( chain == null )
				chain = new StackChain( max );
			
			// Push the bottom of this stack onto the top of the next stack in the chain
			chain.Push( bottom );
			
			// Remove the bottom by setting the bottom to the previous element from the bottom
			bottom = bottom.Prev();
		}
	}
	
	// Pop the task from the top of the stack
	public Task Pop() {
		// Stack is Empty
		if ( Empty() )
			return null;
			
		// The task that is being popped from the stack
		Task task = top;
		
		// Stack is empty
		if ( --size == 0 )
			top = bottom = null;
		else {
			// Move the top to the current top's next pointer.
			top = top.Next();
			
			// There is a another stack chained to this stack
			if ( chain != null ) {
				// Pop the top of the stack chained to this stack
				Task move = chain.Pop();
				
				// Add this task to the bottom of the stack
				bottom.Next( move );
				// Set the task's next to null
				task.Next( null );
				// Set the task as the new bottom of the stack
				bottom = move;
				
				// If the stack chained to this one is empty, set the chain pointer to null
				if ( chain.Empty() )
					chain = null;
			}
		}
		
		// return the task that was popped
		return task;
	}
	
	public static void main(String[] args) {
		System.out.println("Process tasks in order: 6, 5, 4, 3, 2, 1, 0" );
		StackChain stack = new StackChain( 3 );
		for ( int i = 0; i < 7; i++ )
			stack.Push( new Task( i ) );
		for ( int i = 0; i < 7; i++ )
			stack.Pop().Action();
	}
}

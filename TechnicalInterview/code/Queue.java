// Definition for a Task element in a Queue
class Task {
	private Object task;
	private Task   next = null;
	private int    priority;
	
	// constructor, task represents the task to be performed
	public Task( Object task, int priority ) {
		this.task = task;
		this.priority = priority;
	}
	
	// Get the task's priority
	public int Priority() {
		return priority;
	}
	
	// Set the task's priority
	public void Priority( int priority ) {
		this.priority = priority;
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

// Definition for a Queue
public class Queue {
	public Task head = null;	// the head of the queue
	
	// Check if Queue is empty
	private boolean Empty() {
		if ( head == null )
			return true;
		return false;
	}
	
	// Add a task to the queue
	public void Add( Task task ) {
		// the queue is empty, set head to the task
		if ( Empty() ) {
			head = task;
		}
		// otherwise, insert the task into the queue according to the task's priority
		else {
			Insert( task );
		}
	}
	
	// Insert a task into the queue based on priority
	private void Insert( Task task ) {
		// Start at the head of the chain to search where to insert the task
		Task curr = head, prev = head;
		while ( curr != null ) {
			// Find a task whose's priority is less than the new task
			if ( task.Priority() > curr.Priority() ) {
				// Insert the task in front of the current task.
				task.Next( curr );
				
				// If inserting in front of the head of the queue, 
				// make the new task the head of the queue
				if ( curr == head )
					head = task;
				// Otherwise, set the previous element's next to the new task
				else {
					prev.Next( task );
				}
				break;
			}
			
			prev = curr;
			curr = curr.Next();
		}
		
		// Add to the tail (end) of the queue
		if ( curr == null ) {
			prev.Next( task );
		}
	}
	
	// Remove the top of the queue and process the task
	public void Pop() {
		// Queue is empty
		if ( Empty() )
			return;
			
		// Proces the task here
		head.Action();
		
		// Move the head to the next element.
		head = head.Next();
	}	
	
	// Update the priority of the task and resort the queue
	public void Update( Task task, int priority ) {
		
		// Update the task's priority
		task.Priority( priority );
		
		// If the task is the head of the queue, remove it and update head to the next element
		if ( head == task ) {
			head = head.Next();
		}
		// Find the task in the queue
		else {
			Task curr = head.Next(), prev = head;
			while ( curr != null ) {
				// Remove the task from the queue and update previous element's next to this task's next element
				if ( task == curr ) {
					prev.Next( curr.Next() );
					break;
				}
				prev = curr;
				curr = curr.Next();
			}
		}
		
		// Add the task back to the queue
		Add( task );
	}
	
	public static void main(String[] args) {
		Queue queue = new Queue();
		queue.Add( new Task( "A", 1 ) );
		queue.Add( new Task( "B", 3 ) );
		Task task =  new Task( "C", 2 );
		queue.Add( task );
		queue.Update( task, 4 );
		queue.Pop();
		queue.Pop();
		queue.Pop();
	}
}
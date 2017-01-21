// Definition for an element in the dynamic array
class Element {
	Object  value = null;	// Element value
	Element next  = null;	// Next element in the array
	
	// Constructor
	public Element( Object value ) {
		this.value = value;
	}
}

// Definition for a Dynamic Array
class DynamicArray {
	private Element head = null;	// Head of the Array
	private Element tail = null;	// Tail of the Array
	private int     size = 0;
	
	// The size (number of elements) of the array
	public int Size() {
		return size;
	}
	
	// Add an element to the end of the dynamic array
	public void Add( Object value ) {
		Element e = new Element( value );
		
		// Set the next element of the previous tail to the new element
		if ( tail != null ) 
			tail.next = e;
			
		// set the current tail to the new element
		tail = e;
		
		// If there is no head (first element), set the head to the new element.
		if ( head == null )
			head = e;
			
		// Increment the size of the array
		size++;
	}

	// Get the value at the corresponding index
	public Object Get( int index ) {
		// Check for out of bounds condition
		if ( index > size - 1 || index < 0 )
			return null;
			
		// Step (linear) to the index position
		Element curr = head;
		for ( int i = 0; i < index; i++ )
			curr = curr.next;
			
		return curr.value;
	}

	public boolean Delete( int index ) {
		// Check for out of bounds condition
		if ( index > size - 1 || index < 0 )
			return false;
		
		// Remove the head of the dynamic array
		if ( index == 0 ) {
			// Set the head to the next head
			head = head.next;
			
			// If the array is now empty, set the tail to null
			if ( --size == 0 )
				tail = null;
			
			return true;
		}
		
		// Find the element at the specified index, and remember the element before it.
		Element curr = head, prev = null;
		for ( int i = 0; i < index; i++ ) {
			prev = curr;
			curr = curr.next;
		}
		
		// Set the next pointer of the previous element to the next pointer of the current element,
		// thus dropping this element which is between them.
		prev.next = curr.next;
		
		// We deleted the tail. Set the current tail to the previous element.
		if ( --size == index )
			tail = prev;
			
		return true;
	}
	
	public boolean Insert( int index, Object value ) {
		// Check for out of bounds condition
		if ( index > size - 1 || index < 0 )
			return false;
			
		// Adding to the tail
		if ( index == size-1 ) {
			Add( value );
			return true;
		}
		
		// Find the element at the index
		Element curr = head;
		for ( int i = 0; i < index; i++ ) 
			curr = curr.next;

		// Insert (after) between the current element and the next
		Element e = new Element( value );
		e.next = curr.next;
		curr.next = e;
		
		size++;
		return true;
	}
}

public class dynamic {
	public static void main(String[] args) {
		DynamicArray d = new DynamicArray();
		d.Add(1);
		d.Add(2);
		d.Add(3);
		d.Add(5);
		d.Add(6);
		d.Add(7);
		
		for ( int i = 0; i < d.Size(); i++ )
			System.out.println( (int) d.Get(i) );
		
		d.Delete( 4 );	
		
		for ( int i = 0; i < d.Size(); i++ )
			System.out.println( (int) d.Get(i) );
		
		d.Delete( 4 );	
		
		for ( int i = 0; i < d.Size(); i++ )
			System.out.println( (int) d.Get(i) );
		
		d.Insert( 2, 4 );
		
		for ( int i = 0; i < d.Size(); i++ )
			System.out.println( (int) d.Get(i) );
		
		d.Delete( 0 );	
		
		for ( int i = 0; i < d.Size(); i++ )
			System.out.println( (int) d.Get(i) );
	}
}
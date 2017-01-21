import java.util.ArrayList;

// Base (Super) class definition for a k-ary tree
abstract class KNode {
	// node data
	private Object key;
	// max number of children
	private final int k;
	
	// Dynamic array for children
	private ArrayList<KNode> children = new ArrayList();
	
	// action to perform on a node
	public abstract void Action();
	
	// constructor: set the node data
	public KNode( int k, Object key ) {
		this.key = key;
		this.k   = k;
	}
	
	// Set the node data
	public void Key( Object key ) {
		this.key = key;
	}
	
	// Get the node data
	public Object Key() {
		return key;
	}
	
	// Get the number of children
	public int Size() {
		return children.size();
	}
	
	// Add another child (branch)
	public KNode Add( Object key ) {
		// exceeds number of allowed children
		if ( Size() == k )
			return null;
		Tree e = new Tree( k, key );
		children.add( e );
		return e;
	}
	
	// Get all the children of this node
	public ArrayList<KNode> Children() {
		return children;
	}
}

// Definition for a k-ary tree
class Tree extends KNode {
	public Tree( int k, Object key ) {
		super( k, key );
	}
	
	public void Action() {
		// do something
	}
}
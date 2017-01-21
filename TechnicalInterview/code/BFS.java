import java.util.LinkedList;
// Base Class definition for k-ary tree
abstract class Node {
	// node data
	private Object key;	
	// action to perform on a node
	public abstract void Action();
	
	// constructor: set the node data
	public Node( Object key ) {
		this.key = key;
	}
	
	// Set the node data
	public void Key( Object key ) {
		this.key = key;
	}
	
	// Get the node data
	public Object Key() {
		return key;
	}
}

// Derived definition for a Binary Tree
class BinaryTree extends Node {
    private BinaryTree left;	// left binary subtree
    private BinaryTree right;	// right binary subtree
	
	// Constructor: set the node data and left/right subtrees to null
	public BinaryTree (Object key) {
        super( key );
        right = null;
        left = null;
    }
	
	// Set the left binary subtree
	public void Left( BinaryTree left ) {
		this.left = left;
	}
	
	// Get the left binary subtree
	public BinaryTree Left() {
		return left;
	}
	
	// Set the right binary subtree
	public void Right( BinaryTree right ) {
		this.right = right;
	}
	
	// Get the right binary subtree
	public BinaryTree Right() {
		return right;
	}
	
	// InOrder Traversal
	public void InOrder() {
		if ( Left() != null ) Left().InOrder();
		Action();
		if ( Right() != null ) Right().InOrder();
	}
	
	// PreOrder Traversal
	public void PreOrder() {
		Action();
		if ( Left() != null ) Left().PreOrder();
		if ( Right() != null ) Right().PreOrder();
	}
	
	// PostOrder Traversal
	public void PostOrder() {
		if ( Left() != null ) Left().PostOrder();
		if ( Right() != null ) Right().PostOrder();
		Action();
	}
	
	// Example action to perform on a node
	public void Action() {
		System.out.println( this.Key() );
	}
}
public class BFS {
	public static void BFS( BinaryTree root ) {
		
		// Check if tree is empty
		if ( root == null )
			return;
			
		// list of nodes to visit in node level order
		LinkedList<BinaryTree> visit = new LinkedList<BinaryTree>();	
		visit.add( root );
		
		// sequentially visit in node in level order as it is dynamically added to the list
		for ( int i = 0; i < visit.size(); i++ ) {
			// Perform the node action
			visit.get( i ).Action();
			
			// Add to the list the child siblings of this node
			if ( visit.get( i ).Left() != null )
				visit.add( visit.get( i ).Left() );
			if ( visit.get( i ).Right() != null )
				visit.add( visit.get( i ).Right() );
		}	
	}
	
	public static void main( String[] args ) {
		BinaryTree tree = new BinaryTree( "1" );
		tree.Left ( new BinaryTree( "2" ) );
		tree.Right( new BinaryTree( "3" ) );
		tree.Left().Left( new BinaryTree( "4" ) );
		tree.Left().Right( new BinaryTree( "5" ) );
		System.out.println( "BFS output 1 2 3 4 5");
		BFS( tree );
	}
}
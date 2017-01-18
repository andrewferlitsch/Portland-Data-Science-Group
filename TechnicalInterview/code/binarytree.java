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
	
	// Calculate the maximum depth of the binary tree
	public int MaxDepth( int max )
	{
		max++;	// increment by one level for the node
		
		int lmax = max, rmax = max;	// maximum depth on left and right nodes.
		
		// Calculate the maximum depth along the left binary subtree
		if ( Left() != null )
			lmax = Left().MaxDepth( max );
		// Calculate the maximum depth along the right binary subtree
		if ( Right() != null )
			rmax = Right().MaxDepth( max );
		
		return Math.max( lmax, rmax );
	}
	
	// Calculate the minimum depth of the binary tree
	public int MinDepth( int min )
	{
		min++;	// increment by one level for the node
		
		int lmin = min, rmin = min;	// minimum depth on left and right nodes.
		
		// Calculate the maximum depth along the left binary subtree
		if ( Left() != null )
			lmin = Left().MaxDepth( min );
		// Calculate the maximum depth along the right binary subtree
		if ( Right() != null )
			rmin = Right().MaxDepth( min );
		
		return Math.min( lmin, rmin );
	}	
	
	// Calculate the minimum and maximum value in the binary tree
	public int[] MinMax() {
		int min = 0x7FFFFFFF;  // counter for min value (start at maximum signed int)
		int max = 0x80000000;  // counter for max value (start at minimum signed int)
			
		// list of nodes to visit in node level order
		LinkedList<BinaryTree> visit = new LinkedList<BinaryTree>();	
		visit.add( this );
		
		// sequentially visit each node in level order as it is dynamically added to the list
		for ( int i = 0; i < visit.size(); i++ ) {
			// Perform the node action
			if ( (int)  visit.get( i ).Key() > max )
				max = (int)  visit.get( i ).Key();
			if ( (int)  visit.get( i ).Key() < min )
				min = (int)  visit.get( i ).Key();
			
			// Add to the list the child siblings of this node
			if ( visit.get( i ).Left() != null )
				visit.add( visit.get( i ).Left() );
			if ( visit.get( i ).Right() != null )
				visit.add( visit.get( i ).Right() );
		}	
		
		int[] ret = new int[2];
		ret[0] = min; ret[1] = max;
		return ret;
	}
	
	// Driver method
    public static void main(String[] args)
    {
        BinaryTree tree = new BinaryTree( 1 );
        tree.Left(  new BinaryTree( 2 ) );
        tree.Right( new BinaryTree( 3 ) );
        tree.Left().Left( new BinaryTree( 4 ) );
        tree.Left().Right( new BinaryTree( 5 ) );
 
        System.out.println("Preorder traversal of binary tree is ");
        tree.PreOrder();
 
        System.out.println("\nInorder traversal of binary tree is ");
        tree.InOrder();
 
        System.out.println("\nPostorder traversal of binary tree is ");
        tree.PostOrder();
 
        System.out.println("\nMax Depth(3) is  " + tree.MaxDepth( 0 ) );
 
        System.out.println("\nMin Depth(2) is  " + tree.MinDepth( 0 ) );
 
       int[] minmax = tree.MinMax();
	   System.out.println("\nMin Value(1) is  " + minmax[ 0 ] );
	   System.out.println("\nMax Value(5) is  " + minmax[ 1 ] );
    }
}






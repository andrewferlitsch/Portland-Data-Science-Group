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
    }
}






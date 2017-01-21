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
	
	// Example action to perform on a node
	public void Action() {
		System.out.println( this.Key() );
	}
}

// Definition for a binary search tree
class BST {
	public BinaryTree root = null;	// root of the binary search tree
	
	// Insert a node into a binary tree
	public void Insert( BinaryTree node ) {
		// Empty Tree, make the node the root
		if ( root == null ) {
			root = node;
			return;
		}
		
		// Follow a path to insert the node
		BinaryTree curr = root;
		while ( true ) {
			// node is a duplicate, do not insert
			if ( (int) node.Key() == (int) curr.Key() ) {
				return;
			}
			
			// The node is less than the current node, traverse left
			if ( (int) node.Key() < (int) curr.Key() ) {
				// If there is no left node, make this node the left node
				if ( curr.Left() == null ) {
					curr.Left( node );
					return;
				}
				curr = curr.Left();
			}
			// The node is greater than to the current node, traverse left
			else {
				// If there is no right node, make this node the right node
				if ( curr.Right() == null ) {
					curr.Right( node );
					return;
				}
				curr = curr.Right();
			}
		}
	}
		
	// Find a node in a binary tree
	public BinaryTree Find( Object key ) {
			
		// Follow a path to find the node
		BinaryTree curr = root;
		while ( true ) {
			// current node is null, return null (not found)
			if ( curr == null )
				return null;
				
			// the value is equal to the current node, return the current node
			if ( (int) key == (int) curr.Key() ) {
				return curr;
			}
			
			// The value is less than the current node, traverse left
			if ( (int) key < (int) curr.Key() ) {
				curr = curr.Left();
			}
			// The value is greater than to the current node, traverse left
			else {
				curr = curr.Right();
			}
		}
	}
	
	// Find a node in a binary tree
	public void Delete( Object key ) {

		// Follow a path to find the node
		BinaryTree curr = root, prev = null;
		boolean isLeft = false;
		while ( true ) {
			// current node is null, return (not found)
			if ( curr == null )
				return;
				
			// the value is equal to the current node, delete the node
			if ( (int) key == (int) curr.Key() ) {
				if ( isLeft ) 
					prev.Left( null );
				else
					prev.Right( null );
				BinaryTree saveRoot = root;
				root = prev;
				if ( curr.Left()  != null ) Insert( curr.Left() );
				if ( curr.Right() != null ) Insert( curr.Right() );
				root = saveRoot;
				return;
			}
			else if ( (int) key < (int) curr.Key() ) {
				isLeft = true;
				prev = curr;
				curr = curr.Left();
			}
			else {
				isLeft = false;
				prev = curr;
				curr = curr.Right();
			}
		}
	}
	
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
	
	// Driver method
    public static void main(String[] args)
    {
        BST tree = new BST();
		tree.Insert( new BinaryTree( 3 ) );
		tree.Insert( new BinaryTree( 6 ) );
		tree.Insert( new BinaryTree( 2 ) );
		tree.Insert( new BinaryTree( 4 ) );
		tree.Insert( new BinaryTree( 1 ) );
		tree.Delete( 6 );
		System.out.println("BST level order: 3 2 4 1");
		BFS( tree.root );
	}
}
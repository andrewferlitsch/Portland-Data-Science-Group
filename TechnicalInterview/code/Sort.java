class Sort {
	// Definition for a Bubble Sort
	public static int[] BubbleSort( int[] data ) {
		boolean swapped = true;
		// continue to repeat until no more adjacent values are swapped
		while ( swapped ) {
			swapped = false;
			// Make a scan through the list
			for ( int i = 0; i < data.length - 1; i++ ) {
				// Compare adjacent values. If the first value > second value, swap the values.
				if ( data[ i ] > data[ i + 1 ] ) {
					int swap = data[ i ];
					data[ i ] = data[ i + 1 ];
					data[ i + 1 ] = swap;
					swapped = true;
				}
			}
		}
		return data;
	}
	
	// Definition for an Insertion Sort
	public static int[] InsertionSort( int[] data ) {
		// iterate through the list for each element except the first element
		for ( int i = 1; i < data.length; i++ ) {
			// starting with the current element, remove/insert proceeding
			// elements so they are in sorted order
			for ( int j = i; j > 0; j-- ) {
				// swap adjacent elements
				if ( data[ j ] < data[ j - 1 ] ) {
					int temp = data[ j ];
					data[ j ] = data[ j -1 ];
					data[ j - 1 ] = temp;
				}
			}
		}
		return data;
	}
	
	public static void main( String[] args ) {
		int[] data = new int[ 6 ];
		//data[ 0 ] = 5; data[ 1 ] = 2; data[ 2 ] = 4; data[ 3 ] = 1; data[ 4 ] = 6; data[ 5 ] = 3;
		//data = BubbleSort( data );
		//for ( int i = 0; i < data.length; i++ )
			//System.out.println( data[ i ] );
		
		data[ 0 ] = 5; data[ 1 ] = 2; data[ 2 ] = 4; data[ 3 ] = 1; data[ 4 ] = 6; data[ 5 ] = 3;
		data = InsertionSort( data );
		for ( int i = 0; i < data.length; i++ )
			System.out.println( data[ i ] );
	}
}
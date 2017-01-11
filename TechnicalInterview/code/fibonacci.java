public class fibonacci {
	public static void main( String args[] ) {
		System.out.println( "Fibonacci Sequence to F(10)");

		for ( int number = 0; number < 10; number++ )
			System.out.println( Fibonacci( number ) );

	}
	
	// Recursive Solution
	public static int Fibonacci( int n) {
		if ( n == 0 ) return 0;
		if ( n == 1 ) return 1;
		return Fibonacci( n - 1 ) + Fibonacci( n - 2 );
	}
}
		

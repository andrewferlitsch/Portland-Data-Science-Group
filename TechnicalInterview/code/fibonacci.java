public class fibonacci {
	public static void main( String args[] ) {
		System.out.println( "Fibonacci Sequence to F(10)");

		for ( int number = 0; number < 10; number++ )
			System.out.println( Fibonacci( number ) );

		for ( int number = 0; number < 10; number++ )
			System.out.println( FibonacciIterative( number ) );

	}
	
	// Recursive Solution
	public static int Fibonacci( int n) {
		if ( n == 0 ) return 0;
		if ( n == 1 ) return 1;
		return Fibonacci( n - 1 ) + Fibonacci( n - 2 );
	}
	
	public static int FibonacciIterative( int n ) {
		if ( n == 0 ) return 0;
		if ( n == 1 ) return 1;

		int fn 		  = 0;	// current value for F(n)		
		int f_minus_2 = 0;	// current value of F(n-2)
		int f_minus_1 = 1;	// current value of F(n-1)
		for ( int i = 2; i <= n; i++ ) {
			fn 		  = f_minus_1 + f_minus_2;	// F(n) = F(n-1) + F(n-2)
			f_minus_2 = f_minus_1;				// next F(n-2)
			f_minus_1 = fn;						// next F(n-1)
		}
		return fn;
	}
}
		


public class GCD {

	// Euclid's algorithm as an iterative solution
	private static int GCD( int x, int y )
	{
		// continue until the division of of the two numbers does not leave a remainder (evenly divisible)
		while ( y > 0 )
		{
			// calculate the remainder of the division by between x and y
			int remainder = ( y % x );
			
			// swap the value of x with y
			x = y;
			
			// set y to the remainder
			y = remainder;
		}
		
		return x;
	}

	// Euclid's algorithm as a recursive solution
	private static int GCDR( int x, int y )
	{
		// return the current value of x when y is reduced to zero.
		if ( y == 0 )
			return x;
			
		return GCDR( y, ( y % x ) );
	}	
	
	// Calculate the least common multiple
	private static int LCM( int x, int y )
	{
		return ( x * y ) / GCD( x, y );
	}
	
	public static void main(String[] args ) {
		System.out.println( "GCD " + GCD( 12, 16 ) );
		System.out.println( "GCD " + GCDR( 12, 16 ) );
		System.out.println( "LCM " + LCM( 6, 8 ) );
	}
}
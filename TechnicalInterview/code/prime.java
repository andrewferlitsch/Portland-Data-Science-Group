public class prime {
	public static void main( String args[] ) {
		System.out.println( "Prime Numbers between 1 and 100");

		// Prime Numbers are numbers only divisible by 1 and itself.
		System.out.println( "1" );
		System.out.println( "2" );
		System.out.println( "3" );

		// Primes for numbers above 5
		for ( int number = 5; number <=100; number += 2 ) {
			int div = 3;
			int third = ( number / 3 );	// calculate one-third of the number
			// Attempt to divide this number by every number between 3 and one third of the number
			for ( /**/; div <= third; div += 2) {
				// use the mod function to see if their is a remainder in the division
				if ( ( number % div ) == 0 )
					break;
			}
			if ( div >= third )
				System.out.println(number);
		}
	}
}
		

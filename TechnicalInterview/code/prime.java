public class prime {
	public static void main( String args[] ) {
		System.out.println( "Prime Numbers between 1 and 100");

		// Prime Numbers are numbers only divisible by 1 and itself.
		System.out.println( "1" );
		System.out.println( "2" );
		System.out.println( "3" );

		// Primes for numbers above 2
		for ( int number = 3; number <=100; number += 2 ) {
			// Attempt to divide this number by every number between 2 and one less than itself
			int div = 2;
			for ( /**/; div < number; div++ ) {
				// use the mod function to see if their is a remainder in the division
				if ( ( number % div ) == 0 )
					break;
			}
			if ( div == number )
				System.out.println(number);
		}
	}
}
		

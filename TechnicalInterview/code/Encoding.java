public class Encoding {
	public static int Size( byte[] encoding ) {
		byte first = encoding[ 0 ];
		// checking leading bit
		if ( ( first & 0x80 ) == 0 )
			return 1;
		if ( ( first & 0x40 ) == 0 )
			return 2;
		if ( ( first & 0x20 ) == 0 )
			return 3;
		if ( ( first & 0x10 ) == 0 )
			return 4;
		if ( ( first & 0x08 ) == 0 )
			return 5;
		if ( ( first & 0x04 ) == 0 )
			return 6;
		if ( ( first & 0x02 ) == 0 )
			return 7;
		if ( ( first & 0x01 ) == 0 )
			return 8;
		return 0;	// error
	}
	
	public static void main(String[] args) {
		byte[] encoding = new byte[8];
		encoding[ 0 ] = (byte) 0x49;
		System.out.println( "Size(1) = " + Size( encoding ) );
		encoding[ 0 ] = (byte) 0x89;
		System.out.println( "Size(2) = " + Size( encoding ) );
		encoding[ 0 ] = (byte) 0xCB;
		System.out.println( "Size(3) = " + Size( encoding ) );
	}
}
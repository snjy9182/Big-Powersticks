import process.serial.*;
Serial mySerial;
PrintWriter output;

voit setup() {
	mySerial = new Serial( this, Serial.list()[0], 9600);
	output = createWriter( "output.txt" );
}


void draw() {
	if (mySerial.available() > 0) {
		String value = mySerial.readString();
		if (value != null ) {
			output.println( value );
			output.close()
		}
	}
}

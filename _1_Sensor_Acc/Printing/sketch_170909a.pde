import processing.serial.*;

Serial myPort;
PrintWriter output;



void setup()
{
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);
  output = createWriter("data.csv");
}

void draw()
{  
  while( myPort.available() > 0) {
    String value = myPort.readString();
      
   if (value != null) {
     output.println(value);
   }
  }  
}
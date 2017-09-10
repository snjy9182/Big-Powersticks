/**
Medhacks 2017
Sun Jay Yoo
September 9, 2017
*/

import java.io.*;
//import java.io.BufferedReader;
//import java.io.InputStreamReader;
//import java.io.OutputStream;

import java.util.Enumeration;

import gnu.io.CommPortIdentifier; 
import gnu.io.SerialPort;
import gnu.io.SerialPortEvent; 
import gnu.io.SerialPortEventListener; 

public class SensorSerialStream implements SerialPortEventListener{
	
	//Initialize stuff
	SerialPort serialPort;

	//All possible port locations from device, MAC OSX suported
	private static final String PORT_NAMES[] = {"/dev/cu.usbmodem1461", "/dev/cu.usbmodem1441"};

	//Manual delayed buffered reader inputted into an input stream reader that
	//converts the machine code bytes into characters
	private BufferedReader input;
	private OutputStream output;

	//Millisecond block until port opens
	private static final int END_TIME = 2000;

	//Default Arduino serial bits per second on COM port
	private static final int BITS_PER_SECOND = 9600;

	public void initialize(){
		//Raspberry Pi use (if we decide to use)
		//System.setProperty("gnu.io.rxtx.SerialPorts", "/dev/ttyACM0");

		CommPortIdentifier portId = null;
		Enumeration portEnumeration = CommPortIdentifier.getPortIdentifiers();

		while (portEnumeration.hasMoreElements()) {
			CommPortIdentifier currPortId = (CommPortIdentifier) portEnumeration.nextElement();
			for (String portName : PORT_NAMES) {
				if (currPortId.getName().equals(portName)) {
					portId = currPortId;
					break;
				}
			}
		}

		if (portId == null) {
			System.out.println("Could not find COM port.");
			return;
		}

		try {
			// open serial port, and use class name for the appName.
			serialPort = (SerialPort) portId.open(this.getClass().getName(),
					END_TIME);

			// set port parameters
			serialPort.setSerialPortParams(BITS_PER_SECOND,
					SerialPort.DATABITS_8,
					SerialPort.STOPBITS_1,
					SerialPort.PARITY_NONE);

			// open the streams
			input = new BufferedReader(new InputStreamReader(serialPort.getInputStream()));
			output = serialPort.getOutputStream();

			// add event listeners
			serialPort.addEventListener(this);
			serialPort.notifyOnDataAvailable(true);
		} catch (Exception e) {
			System.err.println(e.toString());
		}
	}

	//This should be called when you stop using the port. Port-locking or something in Linux
	public synchronized void close() {
		if (serialPort != null) {
			serialPort.removeEventListener();
			serialPort.close();
		}
	}

	//Handle an event on the serial port. Read the data and print it.
	public synchronized void serialEvent(SerialPortEvent oEvent) {
		try(
            FileWriter fw = new FileWriter("data.txt", true);
            BufferedWriter bw = new BufferedWriter(fw);
            PrintWriter out = new PrintWriter(bw)
        ){
            if (oEvent.getEventType() == SerialPortEvent.DATA_AVAILABLE) {
				try {
					String inputLine=input.readLine();
					if (b){
						System.out.println(inputLine);
						out.println(inputLine);
					}
				} catch (Exception e) {
					System.err.println(e.toString());
				}
			}
        } catch (IOException e) {
        //exception handling left as an exercise for the reader
        }
	}

	public static void runshit() throws Exception {
		SensorSerialStream main = new SensorSerialStream();
		main.initialize();
		Thread t=new Thread() {
			public void run() {
				try {Thread.sleep(1000000);} catch (InterruptedException ie) {}
			}
		};
		t.start();
		System.out.println("Started");
	}
}


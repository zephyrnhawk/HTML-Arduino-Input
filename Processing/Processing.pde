/*
 
A simple Processing script for enabling or disabling the LED on an Arduino using a web interface and serial communication.
Author: Sindre Lindstad
Created: 19th of January 2011
 
http://projects.sindrelindstad.com
 
*/
 
 import processing.serial.*;
 Serial port;
 
 void setup()  {
 
   /* This part must be altered to fit your local settings. The number in brackets after "Serial.list()" is where you declare what COM port your Arduino is connected to.
      If you get error messages, try a different number starting from 0 (e.g. 0, 1, 2, 3...) . */
    port = new Serial(this, Serial.list()[1], 9600);  // Open the port that the Arduino board is connected to, at 9600 baud
 
}
 void draw() {
 
  String onoroff[] = loadStrings("http://connect.vtagames.com/DOKODUINO/LEDstate.txt"); // Insert the location of your .txt file
  print(onoroff[0]);  // Prints whatever is in the file ("1" or "0")
 
  if (onoroff[0].equals("2") == true) {
    println(" - TELLING ARDUINO TO TURN PIN 2 ON");
    port.write('2'); // Send "H" over serial to set LED to HIGH
  }
   else if (onoroff[0].equals("3") == true) {
    println(" - TELLING ARDUINO TO TURN PIN 3 ON");
    port.write('3'); // Send "H" over serial to set LED to HIGH
  }  
   else if (onoroff[0].equals("4") == true) {
    println(" - TELLING ARDUINO TO TURN PIN 4 ON");
    port.write('4'); // Send "H" over serial to set LED to HIGH
  }    
   else if (onoroff[0].equals("5") == true) {
    println(" - TELLING ARDUINO TO TURN PIN 5 ON");
    port.write('5'); // Send "H" over serial to set LED to HIGH
  }
   else if (onoroff[0].equals("6") == true) {
    println(" - TELLING ARDUINO TO TURN PIN 6 ON");
    port.write('6'); // Send "H" over serial to set LED to HIGH
  }  
   else if (onoroff[0].equals("7") == true) {
    println(" - TELLING ARDUINO TO TURN PIN 7 ON");
    port.write('7'); // Send "H" over serial to set LED to HIGH
  }  
  else {
 
    println(" - TELLING ARDUINO TO TURN LED OFF");
    port.write('L');  // Send "L" over serial to set LED to LOW
 }
 
  delay(1); // Set your desired interval here, in milliseconds
 }
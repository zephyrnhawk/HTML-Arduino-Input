int incomingByte;      // a variable to read incoming serial data into
int ledPins[] = {2, 3, 4, 5, 6, 7}; // LED pins
int ledCnt = 13;
int p=0;
void setup() {
  // initialize serial communication:
  Serial.begin(9600);
  for(int p=0; p<ledCnt; p++) {
    pinMode(ledPins[p], OUTPUT); // Set the mode to OUTPUT
  }
}
 
void loop() {
  // see if there's incoming serial data:
  if (Serial.available() > 0) {
    // read the oldest byte in the serial buffer:
    incomingByte = Serial.read();
    // if it's a capital H (ASCII 72), turn on the LED:
    if (incomingByte == '2') {
      digitalWrite(2, HIGH);
    }
    if (incomingByte == '3') {
      digitalWrite(3, HIGH);
    }
    if (incomingByte == '4') {
      digitalWrite(4, HIGH);
    }
    if (incomingByte == '5') {
      digitalWrite(5, HIGH);
    } 
    if (incomingByte == '6') {
      digitalWrite(6, HIGH);
    }   
    if (incomingByte == '7') {
      digitalWrite(7, HIGH);
    }
    // if it's an L (ASCII 76) turn off the LED:
    if (incomingByte == 'L') {
      digitalWrite(2, LOW);
      digitalWrite(3, LOW);
      digitalWrite(4, LOW);
      digitalWrite(5, LOW);
      digitalWrite(6, LOW);
      digitalWrite(7, LOW);
      
    }
  }
}

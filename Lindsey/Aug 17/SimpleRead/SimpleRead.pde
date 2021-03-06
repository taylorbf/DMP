

import processing.serial.*;

Serial myPort;  // Create object from Serial class
int val;      // Data received from the serial port
  
  
void setup() {

  size(200, 200);
  String portName = Serial.list()[0];
  myPort = new Serial(this, "/dev/tty.usbmodem1411", 9600);
  myPort.bufferUntil('\n'); 
}

void draw(){
  
  println(val);
  if ( myPort.available() > 0) {  // If data is available,
    val = myPort.read();         // read it and store it in val
  }
  background(255);             // Set background to white
  if (val == 0) {              // If the serial value is 0,
    fill(0);                   // set fill to black
  } 
  else {                       // If the serial value is not 0,
    fill(204);                 // set fill to light gray
  }
  rect(50,val, 100, 100);
}

void serialEvent (Serial myPort) {
  String bufferString = myPort.readStringUntil('\n');
        if (val >= 50 && val < 100){
        fill(204,200,15);   
        rect(50,50, 100, 100);
        }
       else if (val < 50 || val > 100) {   
        fill(0,200,15);   
        rect(50,50, 100, 100);
       }
    
}


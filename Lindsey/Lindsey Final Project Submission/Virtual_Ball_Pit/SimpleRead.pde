

import processing.serial.*;
Circle [] bubbles = new Circle [0];


Serial myPort;  // Create object from Serial class
int val;      // Data received from the serial port
  
  
void setup() {
  size (1200,700);
  frameRate(15);
  noStroke ();
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
 bubbles = (Circle[]) append(bubbles, new Circle());
   
   for (int i=0; i<bubbles.length; i++) {
  bubbles[i].update();
   }
   
  if (bubbles.length>40) {
    bubbles = (Circle[]) subset(bubbles,1);
    //deletes oldest Circle so that no more than 40 Circles are present
  }
}

void serialEvent (Serial myPort) {
  String bufferString = myPort.readStringUntil('\n');
      
    
}


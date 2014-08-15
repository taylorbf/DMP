import processing.serial.*;
Serial port;
float distance = 0;

void setup(){
 port = new Serial(this, "3", 9600);
 // /dev/tty.usbmodem1411
 port.bufferUntil("\n");
}

void draw(){
  background(0,0,distance);
}


void serialEvent (Serial port){
 distance = float(port.readStringUntil("\n")); 
}

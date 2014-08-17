import processing.serial.*;
Serial port;
float distance = 0;

void setup(){
  size(500,500);
 port = new Serial(this, "/dev/tty.usbmodem1411", 9600);

}

void draw(){
  println(distance);
  background(0,0,distance);
}


void serialEvent (Serial port){
 distance = float(port.readString()); 
}


import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class RectangleHell_Orange3 extends PApplet {

//loops and randomness

public void setup(){
  size (1440,1080);
  noStroke();
}

public void draw() {
  for (int i=0; i<1000; i=i+10) {
    fill(0xffffff00, random(50));
    rect(random(width), random(height),random(100),random(100));
  }
  for (int i=0; i<1000; i=i+5) {
    fill(0xffff00ff, random(50));
    rect(random(width), random(height),random(50),random(50));
  }
  for (int i=0; i<1000; i=i+1) {
    fill(0xffFF7403, random(50));
    rect(random(width), random(height),random(10),random(10));
  }
  
  
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--full-screen", "--bgcolor=#666666", "--hide-stop", "RectangleHell_Orange3" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

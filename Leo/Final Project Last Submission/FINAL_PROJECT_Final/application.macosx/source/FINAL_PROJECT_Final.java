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

public class FINAL_PROJECT_Final extends PApplet {

Ball redBall;
Ball greenBall;
Ball blueBall;
Ball reddyBall;


public void setup(){
  size (displayWidth ,displayHeight);
  greenBall = new Ball (255, 255, 0, 10, 50, -50);
  blueBall = new Ball (255, 125, 0, 10, 50, 50);
  redBall = new Ball (255, 0, 255, 10, -50, 50);
  reddyBall = new Ball (255, 0, 0, 5, -50, -50);
  noStroke();
  noCursor();
}

public void draw() {
  for (int i=0; i<1000; i=i+20) {
    fill(0xffffff00, random(50));
    rect(random(width), random(height),random(100),random(100));
  }
  for (int i=0; i<1000; i=i+10) {
    fill(0xffff00ff, random(50));
    rect(random(width), random(height),random(50),random(50));
  }
  
  for (int i=0; i<1000; i=i+5) {
    fill(0xffFF7403, random(50));
    rect(random(width), random(height),random(10),random(10));
  }
  for (int i=0; i<1000; i=i+1) {
    fill(0xffff0000, random(50));
    rect(random(width), random(height),random(10),random(10));
  }

  
  if(mousePressed){
  
  fill(0);
  rectMode(CORNER);
  rect(0,0,width,height);
   }
  reddyBall.ballDisplay();
  redBall.ballDisplay();
  greenBall.ballDisplay();
  blueBall.ballDisplay();
  
  }

 
  


  
 
  
  
  


class Ball {
  int[] xpos =new int[300];
  int[]ypos=new int [300];
  int r;
  int g;
  int b;
  int a;
  int xOffset;
  int yOffset;

  Ball(int rTemp, int gTemp, int bTemp, int  aTemp, int xTempOffset, int yTempOffset ) {
    r = rTemp;
    g = gTemp;
    b = bTemp;
    a = aTemp;
    xOffset = xTempOffset;
    yOffset = yTempOffset;
    for ( int i=0;i<xpos.length; i++) {
      xpos[i]=0;
      ypos[i]=0;
    }
  }

  public void ballDisplay() {
    
    for ( int  i=0;i<xpos.length-1;i++) {
      xpos [i] =xpos [i+1];
      ypos [i]= ypos [i+1];
    }
    xpos[xpos.length-1]= mouseX+xOffset;
    ypos[ypos.length-1]= mouseY+yOffset; 
    for ( int i=0;i<xpos.length;i++) {
      noStroke();
      fill(r,g,b,a); 
      rectMode(CENTER);
      rect ( xpos[i], ypos[i], i, i);
    }
  }
}

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--full-screen", "--bgcolor=#FFFFFF", "--hide-stop", "FINAL_PROJECT_Final" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

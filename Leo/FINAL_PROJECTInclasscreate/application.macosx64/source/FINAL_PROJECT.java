import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.video.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class FINAL_PROJECT extends PApplet {



Capture video;
Ball redBall;
Ball greenBall;
Ball blueBall;
Ball reddyBall;
/*Back groundBack;
Back groundBack2;
Back groundBack3;
Back groundBack4;*/

public void setup(){
  size (1440,1280);
  //groundBack = new Back (0, 0, 0, 10,500,500);
  //groundBack2 = new Back (0, 0, 0, 100, 0, 0);
  //groundBack3= new Back (0, 0, 0, 100, 0, 0);
  //groundBack4= new Back (0, 0, 0, 100, 0, 0);
  video = new Capture(this, width, height);
  video.start();
  greenBall = new Ball (255, 255, 0, 10, 50, -50);
  blueBall = new Ball (255, 125, 0, 10, 50, 50);
  redBall = new Ball (255, 0, 255, 10, -50, 50);
  reddyBall = new Ball (255, 0, 0, 5, -50, -50);
  noStroke();
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
  //ground.backDisplay();
  
  if(keyPressed){
  
  fill(0);
  rectMode(CORNER);
  rect(0,0,width,height);
   }
  reddyBall.ballDisplay();
  redBall.ballDisplay();
  greenBall.ballDisplay();
  blueBall.ballDisplay();
  println(frameRate);
  if (video.available()) {
    
    video.read();
    video.loadPixels();
    
    
    if (mousePressed && (mouseButton == LEFT)) {
    // Loop through video pixel matrix
    for (int i = 0; i < video.pixels.length; i++) {
       // Get color of this pixel
       int bw = video.pixels[i];
       // Get its brightness
       float howbright = brightness(bw);
       // Round its brightness to either 0 or 255
       //howbright = round(howbright/255)*255;
       int c1;
       if (howbright<=65) {
          c1 = 0x0DFF0000;
       } else if (howbright>=66 && howbright<=130) {
          c1 = 0x0DFF00FF;
       }  else if (howbright>=131 && howbright<=195) {
          c1 = 0x0DFF7400;
       }  else {
          c1 = 0x40ffff00;
       }
       // Set the pixel to this new color
       video.pixels[i] = c1;
    }
    video.updatePixels();
    // Draw the video
    image(video, mouseX-200, mouseY-200, width/3.7f, height/3.7f);
    //if (video.available()) {
    
    //video.read();
    //video.loadPixels();
    
    
    } else if (mousePressed && (mouseButton == RIGHT)) {
    // Loop through video pixel matrix
    for (int i = 0; i < video.pixels.length; i++) {
       // Get color of this pixel
       int bw = video.pixels[i];
       // Get its brightness
       float howbright = brightness(bw);
       // Round its brightness to either 0 or 255
       //howbright = round(howbright/255)*255;
       int c1;
       if (howbright<=65) {
          c1 = 0x0DFF0000;
       } else if (howbright>=66 && howbright<=130) {
          c1 = 0x0DFF00FF;
       }  else if (howbright>=131 && howbright<=195) {
          c1 = 0x0DFF7400;
       }  else {
          c1 = 0x40ffff00;
       }
       // Set the pixel to this new color
       video.pixels[i] = c1;
    }
    video.updatePixels();
    // Draw the video
    image(video, 0, 0, width, height);
  //}

  }
  }

  }
  


  
 
  
  
  


/*class Back{
  int[] xpos =new int[2000];
  int[] ypos =new int [2000];
  int r;
  int g;
  int b;
  int a;
  int xOffset;
  int yOffset;

  Back(int rTemp, int gTemp, int bTemp, int  aTemp, int xTempOffset, int yTempOffset ) {
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
  void backDisplay() {
    
    for ( int  i=0;i<xpos.length-1;i++) {
      xpos [i] =xpos [i+1];
      ypos [i]= ypos [i+1];
    }
    xpos[xpos.length-1]= width;
    ypos[ypos.length-1]= height; 
    for ( int i=0;i<xpos.length;i++) {
      
      noStroke();
      fill(r,g,b,a); 
      rectMode(CORNER);
      rect ( xpos[i], ypos[i], i, i);
    }
  }
}
*/


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
    String[] appletArgs = new String[] { "--full-screen", "--bgcolor=#666666", "--hide-stop", "FINAL_PROJECT" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

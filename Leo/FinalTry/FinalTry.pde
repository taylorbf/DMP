import processing.video.*;

Capture video;
Ball redBall;
Ball greenBall;
Ball blueBall;
Ball reddyBall;
/*Back groundBack;
Back groundBack2;
Back groundBack3;
Back groundBack4;*/

void setup(){
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

void draw() {
  for (int i=0; i<1000; i=i+20) {
    fill(#ffff00, random(50));
    rect(random(width), random(height),random(100),random(100));
  }
  for (int i=0; i<1000; i=i+10) {
    fill(#ff00ff, random(50));
    rect(random(width), random(height),random(50),random(50));
  }
  
  for (int i=0; i<1000; i=i+5) {
    fill(#FF7403, random(50));
    rect(random(width), random(height),random(10),random(10));
  }
  for (int i=0; i<1000; i=i+1) {
    fill(#ff0000, random(50));
    rect(random(width), random(height),random(10),random(10));
  }
  //ground.backDisplay();
  if(mousePressed){
  
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
    
    
    if(keyPressed){
    // Loop through video pixel matrix
    for (int i = 0; i < video.pixels.length; i++) {
       // Get color of this pixel
       color bw = video.pixels[i];
       // Get its brightness
       float howbright = brightness(bw);
       // Round its brightness to either 0 or 255
       //howbright = round(howbright/255)*255;
       color c1;
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
    image(video, mouseX-200, mouseY-200, width/3.7, height/3.7);
  }

  }
  
}

  
 
  
  
  


// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 8-3
Zoog zoog;
Zoog zoog2;
Zoog zoog3;

void setup() {
  background(255);

  size(400,400);
  smooth();
  zoog = new Zoog(100,125,60,60,16);
  zoog2 = new Zoog(300,205,60,60,16);
  zoog3 = new Zoog(205,350,60,60,16);

}

void draw() {
    background(30);
    
    // mouseX position determines speed factor
  float factor = constrain(mouseX/10,0,5);

  zoog.jiggle(factor);
  zoog.display();
  zoog2.display();
  zoog3.display();

  }


void keyPressed(){
  zoog2.jump();
  zoog3.dance();
  noStroke();
 // fill(random(180,150),random(180,250),random(0,70),90);
  fill(random(100,255),random(100,255),random(100,255));
  rectMode(CORNER);
  rect(0,0,width,height);


}

void keyReleased(){
  zoog2.land();
}

/*void keyPressed(){
    fill(0);
    rect(0,0,width,height);
    }*/

class Zoog {
  // Zoog's variables
  float x,y,w,h,eyeSize;
  
  // Zoog constructor
  Zoog(float tempX, float tempY, float tempW, float tempH, float tempEyeSize) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    eyeSize = tempEyeSize;
  }
  
  // Move Zoog
  void jiggle(float speed) {
    // Change the location of Zoog randomly
    x = x + random(-1,1)*speed;
    y = y + random(-1,1)*speed;
    // Constrain Zoog to window
    x = constrain(x,0,width);
    y = constrain(y,0,height);
  }
  
   // Move Zoog2 up
  void jump() {
    // Change the location of Zoog up
    y = (y-10);  
    x = (x-.3);
      if (x <= 0) {  // If the shape is off screen
    x = 400;  // move to the left edge
      }
    // Constrain Zoog to window
    x = constrain(x,0,width);
    y = constrain(y,0,height);
  }
  
     // Move Zoog2 down
  void land() {
    // Change the location of Zoog down
    y = (y+10);
    x = (x-.3);
    if (x <= 0) {  // If the shape is off screen
    x = 400;  // move to the left edge
    }
    // Constrain Zoog to window
    x = constrain(x,0,width);
    y = constrain(y,0,height);
  }
  
       // Move Zoog3 left
  void dance() {
    // Change the location of Zoog up
    x = (x+4);
    if (x >= width) {  // If the shape is off screen
    x = 0;  // move to the left edge
  }
   
  }
  
  
  // Display Zoog
  void display() {
    // Set ellipses and rects to CENTER mode
    ellipseMode(CENTER);
    rectMode(CENTER);
    /* Draw Zoog's arms with a for loop
    for (float i = y - h/3; i < y + h/2; i += 50) {
      strokeWeight(3);
      stroke(100);
      line(x-w/4,i,x + w/4,i);
    }*/
    // Draw Zoog's body
    noStroke();
    fill(100);
    rect(x,y,w/6,h);
    // Draw Zoog's head
    noStroke();
    fill(255);
    ellipse(x,y-h,w,h);
    // Draw Zoog's eyes
    fill(0);
    ellipse(x-w/3,y-h,eyeSize,eyeSize*2);
    ellipse(x + w/3,y - h,eyeSize,eyeSize*2);
    // Draw Zoog's legs
    stroke(100);
    line(x - w/12,y + h/2,x - w/4,y + h/2 + 10);
    line(x + w/12,y + h/2,x + w/4,y + h/2 + 10);
  }


  
}

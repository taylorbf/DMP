block block1;
block block2;
block block3;
block block4;
block block5;
block block6;
block block7;
block block8;
block block9;
block block10;
block block11;
block block12;
block block13;
block block14;
block block15;
block block16;
block block17;
block block18;
block block19;
block block20;
block block21;
block block22;
void setup() {
  size(1440, 1280);
  
  
  block1= new block(color(#FF0000), 50, 500, 12, 3); // see below for the order and what these numbers mean
  block2= new block(color(#0000FF), 75, 200, 10, 1);
  block3 = new block(color(#FFFF00), 100, 100, 8, 1);
  block4 = new block(color(#FF0000), 125, 300, 14, 1);
  block5 = new block(color(#0000FF), 150, 400, 24, 1);
  block6 = new block(color(#FFFF00), 175, 50, 20, 1);
  block7 = new block(color(#FF0000), 200, 150, 16, 1);
  block8 = new block(color(#0000FF), 225, 250, 26, 1);
  block9 = new block(color(#FFFF00), 250, 350, 18, 1);
  block10 = new block(color(#FF0000), 275, 450, 28, 1);
  block11 = new block(color(#0000FF), 300, 0, 22, 1);
  block22= new block(color(#FFFF00), 500, 0, 12, 3); 
  block12= new block(color(#FF0000), 200, 0, 10, 1);
  block13 = new block(color(#0000FF), 100, 0, 8, 1);
  block14 = new block(color(#FFFF00), 300, 0, 14, 1);
  block15 = new block(color(#FF0000), 400, 0, 24, 1);
  block16 = new block(color(#0000FF), 50, 0, 20, 1);
  block17 = new block(color(#FFFF00), 150, 0, 16, 1);
  block18 = new block(color(#FF0000), 250, 0, 26, 1);
  block19 = new block(color(#0000FF), 350, 0, 18, 1);
  block20 = new block(color(#FFFF00), 450, 0, 28, 1);
  block21 = new block(color(#FF0000), 0, 0, 22, 1);
}
void draw() {// the order of layers bottom is on top- opposite of Photoshop
  background(255);
  block1.move();// Operate Block object.
  block1.display();
  block22.move();
  block22.display();
  block2.move();
  block2.display();
  block12.move();
  block12.display();
  block3.move();
  block3.display();
  block13.move();
  block13.display();
  block4.move();
  block4.display();
  block14.move();
  block14.display();
  block5.move();
  block5.display();
  block15.move();
  block15.display();
  block6.move();
  block6.display();
  block16.move();
  block16.display();
  block7.move();
  block7.display();
  block17.move();
  block17.display();
  block8.move();
  block8.display();
  block18.move();
  block18.display();
  block9.move();
  block9.display();
  block19.move();
  block19.display();
  block10.move();
  block10.display();
  block20.move();
  block20.display();
  block11.move();
  block11.display();
  block21.move();
  block21.display();
}
class block {
  color c;
  float xpos; // allow it to move on the x axis
  float ypos; // allows it to move on the y axis
  float xspeed; // makes it move acroos the x axis
  float yspeed; // makes it move on the y axis
  block(color tempC, float tempXpos, float tempYpos, float tempXspeed, float tempYspeed) { //see here color, xposition, yposition, speed) 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
    yspeed = tempYspeed;
  }
  void display() {
    stroke(100);
    fill(c);
    rectMode(CENTER);
    rect(xpos, ypos, width/2, height*2);
    rect(xpos, ypos, width, height);
  }
  void move() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
      ypos = ypos + yspeed;
      if (ypos > width) {
      ypos = 0;
      }
    }
  }
}


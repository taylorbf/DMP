/*class Cloud {
  color c;
  float xpos; // allow it to move on the x axis
  float ypos; // allows it to move on the y axis
  float xspeed; // makes it move across the x axis
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
}*/

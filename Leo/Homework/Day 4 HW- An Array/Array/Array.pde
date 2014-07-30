
Stripe[] stripes = new Stripe[50];
int[] xpos = new int[150];
int[] ypos = new int[150];
void setup() {
  size(1280, 720);
  smooth();

  for (int i = 0; i < stripes.length; i++) {
    stripes[i] = new Stripe();
    frameRate(30);
  }
    for (int i = 0; i < xpos.length; i++) {
    xpos[i] = 0;
    ypos[i] = 0;
}
for (int i = 0; i < xpos.length-1; i++) {
    xpos [i] = xpos[i+1];
    ypos[i] = ypos[i+1];
  }
}
void draw() {
  background(#4E086C);
  for (int i = 0; i < xpos.length-1; i++) {
    xpos [i] = xpos[i+1];
    ypos[i] = ypos[i+1];
  }
  for (int i = 0; i < stripes.length; i++) {

    stripes[i].rollover(mouseX, mouseY);
    stripes[i].move();
    stripes[i].display();
  }
  xpos[xpos.length-1]=mouseX;
  ypos[ypos.length-1]=mouseY;
  for (int i = 0; i < xpos.length; i++) {
    noStroke();
    fill(10, 10);
    ellipse(xpos[i], ypos[i], i, i);
  }
  
}
class Stripe {
  float x; 
  float speed; 
  float w;
  boolean mouse; 
  Stripe() {
    x = 0; 
    speed = random(1);
    w = random(10, 30);
    mouse = false;
  }
 
  void display() {
    if (mouse) {
      fill(#EBFF9B, (100));
    } 
    else {
      fill(#B200FF, (100));
    }
    noStroke();
    rect(x, 0, w, height);
  }

  void move() {
    x+= speed;
    if (x > width + 20) x = -20;
  }
 
  void rollover(int mx, int my) {

    if (mx > x && mx < x + w) {
      mouse = true;
    } 
    else {
      mouse = false;
    }     
    
  }
}

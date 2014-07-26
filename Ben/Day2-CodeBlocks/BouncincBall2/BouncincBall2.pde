
float x=10, y=10, bsize=20, speed=4, yspeed=4;

void setup() {
   size(400,300);
}

void draw() {
  
  background(#ffffff);
  ellipse(x,y,bsize,bsize);
  
  x = x + speed;
  
  if (x > width - bsize/2 || x < bsize/2) {
    speed *= -1;
  }
  
  y = y + yspeed;
  
  if (y > height - bsize/2 || y < bsize/2) {
    yspeed *= -1;
  }
}


float x=10, y=10, bsize=20, speed=5;

void setup() {
   size(500,50); 
}

void draw() {
  
  background(#ffffff);
  ellipse(x,y,bsize,bsize);
  
  x = x + speed;
  
  if (x > width - bsize/2 || x < bsize/2) {
    speed *= -1;
  }
}

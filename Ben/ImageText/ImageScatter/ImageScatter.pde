
PImage test;

void setup() {
  size(1000,700);
  test = loadImage("screen.png");
}

void draw() {
  fill(255,40);
  rect(0,0,width,height);
  imageMode(CENTER);
  image(test,random(width),random(height));
}

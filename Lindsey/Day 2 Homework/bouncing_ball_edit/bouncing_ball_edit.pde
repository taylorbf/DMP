//bounce

float x = 150;
float y = 50;
float incriment = 4;
float xincriment = 9;


void setup() {
  size (600,600);
}

void draw(){
  if (mousePressed) {
    background(#FFF25F);
  } else {
    background(#ffffff);
  }
  noStroke();
  if (mousePressed) {
    fill (#ffffff);
  } else {
    fill(#5A1A89);
  }
  ellipse(x,y,100,100);
  y = y + incriment;
  if (y>=550 || y<=50) {
    incriment *= -1;
  }
  x = x + xincriment;
  if (x>=550 || x<=50) {
    xincriment *= -1;
  }


for(float i=0; i<10; i=i+50){
  
fill(random(255),random(255),random(255),30);
  noStroke();
  ellipse(mouseX,mouseY,20,20);
}
}

//loops and randomness


void setup(){
  size(700,700);
  noStroke();
  background(#0A3252);
}

void draw(){
  for(int i=0; i<10; i=i+1){
    fill(#0A3252,10);
    rect(0,0,width,height);
    fill(#ffffff);
    ellipse(random(mouseX), random(mouseY),i,70);
  }
}

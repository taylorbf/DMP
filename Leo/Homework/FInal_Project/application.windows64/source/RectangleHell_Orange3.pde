//loops and randomness

void setup(){
  size (1440,1080);
  noStroke();
}

void draw() {
  for (int i=0; i<1000; i=i+10) {
    fill(#ffff00, random(50));
    rect(random(width), random(height),random(100),random(100));
  }
  for (int i=0; i<1000; i=i+5) {
    fill(#ff00ff, random(50));
    rect(random(width), random(height),random(50),random(50));
  }
  for (int i=0; i<1000; i=i+1) {
    fill(#FF7403, random(50));
    rect(random(width), random(height),random(10),random(10));
  }
  
  
}

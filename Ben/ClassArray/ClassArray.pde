
Grass[] stalks = new Grass[600];

void setup() {
  size(1000,600);
  for (int i=0;i<stalks.length;i++) {
    stalks[i] = new Grass();
  }
  noStroke();
}

void draw() {
  background(#88bbdd);
  
  for (int i=0;i<stalks.length;i++) {
    stalks[i].draw();
  }
}

class Grass {
  
   float x = random(width), y=height,wid=7,hgt=200;
   float bend = random(wid);
   float accel = -bend/30;
   float displacement = random(5);
  
   Grass() {
     
   } 
  
   void draw() {
       pushMatrix();
       translate(x,y);
       fill(#00ff00);
       triangle(0,0,wid/2+bend,-hgt,wid,0);
       popMatrix();
       
       if (bend > 0) {
          bend += random(accel);
          accel -= .05; 
       }
       
       if (bend < 0) {
          bend += random(accel);
          accel += .05; 
       }
       
       accel *= 0.9;
   }
  
}

void mouseMoved() {
  for (int i=0;i<stalks.length;i++) {
    if (stalks[i].x>mouseX-50 && stalks[i].x<mouseX+50) {
      stalks[i].bend += ((mouseX-pmouseX)/5)*(mouseY/300); 
      stalks[i].accel = -stalks[i].bend/5;
    }
  }
}

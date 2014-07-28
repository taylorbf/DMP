
Bee[] hive = new Bee[130];


void setup(){
  size(600,600, P3D);
  noStroke();
  for (int i=0;i<hive.length;i=i+1) {
    //create bees
    hive[i] = new Bee(random(width),random(height));
  }
}

void draw(){
  background(#585858);
  pushMatrix();
  translate(width/2,0,0);
  rotateY(map(mouseX,0,width,0,TWO_PI));
  for (int i=0;i<hive.length;i=i+1) {
    //make bees fly
    hive[i].fly();
    hive[i].buzz();
  }
  popMatrix();
}

class Bee {
 
 float x=0;
 float y=500;
 float speed=random(8);
 
 Bee(float setx, float sety){
   x = setx;
   y = sety;
 }

void fly() {
  
  pushMatrix();
  translate(x,y);
  scale(0.5, 0.5);
  
  fill(#F7CF2D);
  ellipse(100,100, 40, 70);
  fill(#000000);
  ellipse(95,65,15,15);
  ellipse(105,65,15,15);
  fill(#000000);
  rect(81,85,38,8);
  rect(80,100,40,8);
  fill(#ffffff, 120);
  arc(130, 70, 50, 50, 0, PI);
  arc(70, 70, 50, 50, 0, PI);

  popMatrix();
  
  
}

void buzz() {
   x = x + random(-1,1); 
   y = y + random(-1,1); 
   y = y - 1;
   if (y<-75) {
      y = height; 
   }
   if (x<-75) {
      x = width; 
   }
   if (x>width) {
      x = -50; 
   }
 
}

}


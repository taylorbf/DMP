Bee[] hive = new Bee[100];


void setup(){
  size(600,600);
  noStroke();
  
  for(int i = 0; i < hive.length; i++){
  //create bees
  hive[i] = new Bee(random(width),random(height));
  }
}

void draw(){
  background(#585858);
  for(int i=0; i < hive.length;i++){
    hive[i].fly();
  }

}

class Bee {
 
 float x=0;
 float y=500;
 float speed=random(8);
 
 Bee(float setx,float sety){
   x = setx;
   y = sety;
 }

void fly() {
  
  pushMatrix();
  float buzz = random(-2,2);
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
  
  if(random(1)==1){
  y += buzz;
  } else {
    y -= buzz;
  }
  
  if(random(1)==1){
  x += buzz;
  } else {
    x -= buzz;
  }
  
  y -= 2;
  
  if(y < -100){
    y=height;
  }
  
    if(x < -100 || x > width+100){
    x=width/2;
  }
  
}

}


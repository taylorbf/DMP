
Star[] galaxy = new Star[600];


void setup(){
  size(1200,600);
  background(0);
  for (int i=0;i<galaxy.length;i=i+1) {
    //galaxy[i]= new Star();

  galaxy[i]= new Star(random(width), random(height));
  } 
   for (int i=0;i<galaxy.length;i=i+1) {
    galaxy[i].blink();
  }
}


void draw(){
 // fill(#000000,random(0,10));  
//  rect(0,0,width,height);

}
 
 class Star {
 
 float x=0;
 float y=500;
 float speed=random(8);
 
 Star(float setx, float sety){
   x = setx;
   y = sety;
 }
  
  void blink() {
  
  pushMatrix();
  translate(x,y);
  scale(random(0, 0.5));
  noStroke();
  fill(255,random(30,100));
  ellipse(100,100, 10,10);

  popMatrix();
  
}
  
 }

void keyPressed(){
  fill(#000000,70);
  rect(0,0,width,height);
  for (int i=0;i<galaxy.length;i=i+1) {
    //galaxy[i]= new Star();

  galaxy[i]= new Star(random(width), random(height));
  } 
   for (int i=0;i<galaxy.length;i=i+1) {
    galaxy[i].blink();
  }
  }
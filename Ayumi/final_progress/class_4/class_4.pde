float a = 90;
  
void setup(){
  size(700,700);
  background(#E8F5F5);
  noStroke();
  smooth();
  fill(0,a);
}

void draw() {
  //erase
  background(#E8F5F5);
  fill(0,a);
  rectMode(CENTER);
  
  myArc.move();
  myCircle.move();
  rectThin.moveDown();
  rectWide.wider();
  //myTri.changeShape();
  myTri2.move();

}

void keyPressed(){
  noLoop();
}

void mousePressed(){
  loop(); 
}



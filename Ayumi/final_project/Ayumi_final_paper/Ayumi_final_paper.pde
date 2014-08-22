 
PImage img;
  
void setup(){
  size(800,800);
  img = loadImage("paper_800x800.jpg" );
  noStroke();
  smooth();
  fill(0,90);
}

void draw() { 
  image(img, 0, 0);
  //erase
  fill(0,90);
  rectMode(CENTER);
  ellipseMode(CENTER);
  
  myArc.move();
  myArc2.move();
  myArc3.move();
  myArc4.move();
  myArc5.move();
  myArc6.move();
  myArc7.move();
  myArc8.move();
  myArc9.move();
  
  myCircle.move();
  myCircle2.move();
  myCircle3.move();
  myCircle4.move();
  myCircle5.move();
  myCircle6.move();
  myCircle7.move();
  myCircle8.move();
  myCircle9.move();
  
  rectThin.moveDown();
  rectThin2.moveDown();
  rectThin3.moveDown();
  rectThin4.moveDown();
  rectThin5.moveDown();
  rectThin6.moveDown();
  rectThin7.moveDown();
  rectThin8.moveDown();
  rectThin9.moveDown();
  
  rectWide.wider();
  rectWide2.wider();
  rectWide3.wider();
  rectWide4.wider();
  rectWide5.wider();
  rectWide6.wider();
  rectWide7.wider();
  rectWide8.wider();
  rectWide9.wider();
  
  myTri.move();
  myTri2.move();
  myTri3.move();
  myTri4.move();
  myTri5.move();
  myTri6.move();
  myTri7.move();
  myTri8.move();
  myTri9.move();

}

void keyPressed(){
  noLoop();
}

void mousePressed(){
  loop(); 
}



float rectSkinnyX = 150;
float rectSkinnyY = 150;
float rectFatX = 150;
float rectFatY = 150;
float rectFatW = 35;
float rectFatH = 90;
float a = 90;



void setup(){
  size(900,700);
  background(#E8F5F5);
  noStroke();
  smooth();
}


void draw() {
  drawSymbol1();
  drawSymbol2();
  drawSymbol3();
  drawSymbol4();
}

//grid 1
void drawSymbol1(){

  //draw a symbol
  background(#E8F5F5);
  fill(0,a);
  
 /* pushMatrix();
  translate(100,0);
  if(mousePressed = true);{
    rotate(radians(45));
   
    rectMode(CENTER);
    rect(100,100,160,15);
    popMatrix();
  }
*/

    rectMode(CENTER);
    rect(rectSkinnyX,100,160,15);

  rect(rectFatX,rectFatY,rectFatW,rectFatH);
  triangle(75,100,100,55,125,100);
  ellipse(100,100,30,30); 
  arc(100,100,100,35,0,PI);
 
   

   rectSkinnyX = rectSkinnyX + random(-1,1);
   rectSkinnyX = constrain(rectSkinnyX, 10, 190);
   rectFatX = constrain(rectFatX, 0, 190);
   rectFatW = rectFatW + random(3);
   rectFatW = constrain(rectFatW, 0, 100);

 
}

//grid 2 at 250 and 0
void drawSymbol2(){
  pushMatrix();
  translate(250,50);
  fill(0,90);
  rectMode(CENTER);
  rect(100,100,160,15);
  rect(100,100,35,90);
  triangle(75,100,100,55,125,100);
  ellipse(100,100,30,30); 
  arc(100,100,100,35,0,PI);
  popMatrix();
}

//grid 3 at 450 and 0
void drawSymbol3(){
  pushMatrix();
  translate(450,50);
  fill(0,90);
  rectMode(CENTER);
  rect(100,100,160,15);
  rect(100,100,35,90);
  triangle(75,100,100,55,125,100);
  ellipse(100,100,30,30); 
  arc(100,100,100,35,0,PI);
  popMatrix();
}

//grid 4 at 650 and 0
void drawSymbol4(){
  pushMatrix();
  translate(650,50);
  fill(0,90);
  rectMode(CENTER);
  rect(100,100,160,15);
  rect(100,100,35,90);
  triangle(75,100,100,55,125,100);
  ellipse(100,100,30,30); 
  arc(100,100,100,35,0,PI);
  popMatrix();
}


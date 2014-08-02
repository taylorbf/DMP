float rectSkinnyX = 150;
float rectSkinnyY = 150;
float rectFatX = 150;
float rectFatY = 150;
float rectFatW = 35;
float rectFatH = 90;
float a = 100;
float circleX = 100;
float circleY = 100;

float triX1 = 70;
float triY1 = 100;
float triX2 = 100;
float triY2 = 50;
float triX3 = 130;
float triY3 = 100;

float arcX = 70;
float arcY = 70;
float arcW = 100;
float arcH = 35;
float arcStop = PI;

PImage img;

void setup(){
  size(550,550);
  img = loadImage("paper_560px.png");
  //background(#E8F5F5);
  noStroke();
  smooth();
}


void draw() {
  image(img, 0, 0);
  drawSymbol1();

}


void drawSymbol1(){

  
  //draw a symbol
  pushMatrix();
  translate(-40,-10);
  scale(2.5,2.5);
  rectMode(CENTER);
  //background(#E8F5F5);
  fill(#46568E, a);
  rect(rectSkinnyX,rectSkinnyY,160,15);
  fill(#D34F2B, a);
  rect(rectFatX,rectFatY,rectFatW,rectFatH);
  fill(0, a);
  ellipse(circleX,circleY,30,30); 
  fill(#E8C744,a);
  arc(arcX,arcY,arcW,arcH,0,arcStop);
  fill(#6A6969,a);
  triangle(triX1,triY1,triX2,triY2,triX3,triY3);

  popMatrix();
 
   //rectSkinny move up
   if(mousePressed == true){
     a = a+1;
     a = constrain(a, 0, 190);
     
   //rectSkinny move up
     rectSkinnyY = rectSkinnyY - 2;
     rectSkinnyY = constrain(rectSkinnyY, 60, 190);

   //rectFat move left
     rectFatX = rectFatX - 4;
     rectFatX = constrain(rectFatX, 80, 190);
     
   //ellipse drop
     circleY = circleY + 1;
     circleY = constrain(circleY, 0, 190);
   
   //triangle change shape - mad and dumn way?
     triX1 = triX1 + 1;
     triX1 = constrain(triX1, 20, 200);
     triY1 = triY1 + 1;
     triY1 = constrain(triY1, 70, 180);
     triX2 = triX2 + 1;
     triX2 = constrain(triX2, 50, 100);
     triY2 = triY2 + 1;
     triY2 = constrain(triY2, 30, 60);
     triX3 = triX3 + 1;
     triX3 = constrain(triX3, 0, 180);
     triY3 = triY3 + 1;
     triY3 = constrain(triY3, 0, 195);

   //arc move and change - mad and dumn way?
     arcX = arcX + 1;
     arcX = constrain(arcX, 20, 180);
     arcY = arcY + 5;
     arcY = constrain(arcY, 30, 100);
     arcH = arcH + 1;
     arcH = constrain(arcH, 30, 100);
     arcStop = PI + QUARTER_PI;
   }

 

}



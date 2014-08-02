float rectSkinnyX = 150;
float rectSkinnyY = 150;
float rectFatX = 150;
float rectFatY = 150;
float rectFatW = 35;
float rectFatH = 90;
float a = 90;
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




void setup(){
  size(700,700);
  background(#E8F5F5);
  noStroke();
  smooth();
}


void draw() {
  drawSymbol1();
  drawSymbol_2();
  drawSymbol3();
}


void drawSymbol1(){

  //draw a symbol
  background(#E8F5F5);
  fill(0,a);
  rectMode(CENTER);
  rect(rectSkinnyX,rectSkinnyY = 150,160,15);
  rect(rectFatX,rectFatY,rectFatW,rectFatH);
  ellipse(circleX,circleY,30,30); 
  triangle(triX1,triY1,triX2,triY2,triX3,triY3);
  arc(arcX,arcY,arcW,arcH,0,arcStop);
 
   //rectSkinny move up
   if(mousePressed == true){
     rectSkinnyY = rectSkinnyY - 2;
     rectSkinnyY = constrain(rectSkinnyY, 80, 190);
   
   //rectFat move left
     rectFatX = rectFatX - 4;
     rectFatX = constrain(rectFatX, 80, 190);
   
   //ellipse down
     circleY = circleY + 2 ;
     circleY = constrain(circleY, 0, 40);

   //triangle change shape - mad and dumn way?
     triX1 = triX1 + 1;
     triX1 = constrain(triX1, 20, 180);
     triY1 = triY1 + 1;
     triY1 = constrain(triY1, 70, 180);
     triX2 = triX2 + 1;
     triX2 = constrain(triX2, 50, 100);
     triY2 = triY2 + 1;
     triY2 = constrain(triY2, 30, 60);
     triX3 = triX3 + 1;
     triX3 = constrain(triX3, 10, 200);
     triY3 = triY3 + 1;
     triY3 = constrain(triY3, 10, 150);

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

void drawSymbol2(){

  //pushMatrix();
  //translate(200,200);
  rect(rectSkinny2X,rectSkinny2Y,160,15);
  rect(rectFat2X,rectFat2Y,rectFat2W,rectFat2H);
  ellipse(cir2X,cir2Y,30,30); 
  triangle(tri2X1,tri2Y1,tri2X2,tri2Y2,tri2X3,tri2Y3);
  arc(arc2X,arc2Y,arc2W,arc2H,0,arcStop);
  //popMatrix();
 
   //rectSkinny move down
   if(mousePressed == true){
     rectSkinny2Y = rectSkinny2Y + 1;
     rectSkinny2Y = constrain(rectSkinny2Y, 0, 190);
   
   //rectFat move right
     rectFat2Y = rectFat2Y + 4;
     //rectFat2Y = constrain(rectFat2Y, 0, 90);

   //ellipse up and left
     cir2X = cir2X - 1;
     cir2X = constrain(cir2X, 0, 50);
     cir2Y = cir2Y - 1;
     cir2Y = constrain(cir2Y, 0, 50);
     
   //triangle change shape - mad and dumn way?
     tri2X1 = tri2X1 + 1;
     tri2X1 = constrain(tri2X1, 20, 180);
     triY1 = triY1 + 1;
     triY1 = constrain(triY1, 70, 180);
     triX2 = triX2 + 1;
     triX2 = constrain(triX2, 50, 100);
     triY2 = triY2 + 1;
     triY2 = constrain(triY2, 30, 60);
     triX3 = triX3 + 1;
     triX3 = constrain(triX3, 10, 200);
     triY3 = triY3 + 1;
     triY3 = constrain(triY3, 10, 150);

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


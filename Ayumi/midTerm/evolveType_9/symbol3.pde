
void drawSymbol3(){

  pushMatrix();
  translate(400,0);
  fill(0,a);
  rectMode(CENTER);
  rect(rectSkinnyX,rectSkinnyY,160,15);
  rect(rectFatX,rectFatY,rectFatW,rectFatH);
  ellipse(circleX,circleY-20,30,30); 
  triangle(triX1,triY1+90,triX2,triY2+90,triX3,triY3+90);
  arc(arcX+100,arcY+100,arcW,arcH,0,arcStop);
  popMatrix();
 
   //rectSkinny move up
   if(mousePressed == true){
     rectSkinnyY = rectSkinnyY - 2;
     rectSkinnyY = constrain(rectSkinnyY, 80, 190);
   }
   
   //rectFat move left
   if(mousePressed == true){
     rectFatX = rectFatX - 4;
     rectFatX = constrain(rectFatX, 80, 190);
   }
   
   //ellipse drop
   if(mousePressed == true){
     circleY = circleY + 1;
     circleY = constrain(circleY, 0, 190);
   }
   
   //triangle change shape - mad and dumn way?
   if(mousePressed == true){
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
   }

   //arc move and change - mad and dumn way?
   if(mousePressed == true){
     arcX = arcX + 1;
     arcX = constrain(arcX, 20, 180);
     arcY = arcY + 5;
     arcY = constrain(arcY, 30, 100);
     arcH = arcH + 1;
     arcH = constrain(arcH, 30, 100);
     arcStop = PI + QUARTER_PI;
   }


}



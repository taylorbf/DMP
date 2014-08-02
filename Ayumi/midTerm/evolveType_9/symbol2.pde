float rectSkinny2X = 350;
float rectSkinny2Y = 80;
float rectFat2X = 350;
float rectFat2Y = 100;
float rectFat2W = 35;
float rectFat2H = 90;
//float a = 90;
float cir2X = 320;
float cir2Y = 180;

float tri2X1 = 370;
float tri2Y1 = 80;
float tri2X2 = 400;
float tri2Y2 = 30;
float tri2X3 = 430;
float tri2Y3 = 80;

float arc2X = 320;
float arc2Y = 120;
float arc2W = 100;
float arc2H = 35;
//float arc2Stop = PI;


void drawSymbol_2(){

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
     tri2Y1 = tri2Y1 + 1;
     tri2Y1 = constrain(tri2Y1, 70, 180);
     tri2X2 = tri2X2 + 1;
     tri2X2 = constrain(tri2X2, 50, 100);
     tri2Y2 = tri2Y2 + 1;
     tri2Y2 = constrain(tri2Y2, 30, 60);
     tri2X3 = tri2X3 + 1;
     tri2X3 = constrain(tri2X3, 10, 200);
     tri2Y3 = tri2Y3 + 1;
     tri2Y3 = constrain(tri2Y3, 10, 150);

   //arc move and change - mad and dumn way?
     arc2X = arc2X + 1;
     arc2X = constrain(arc2X, 20, 180);
     arc2Y = arcY + 5;
     arc2Y = constrain(arc2Y, 30, 100);
     arc2H = arc2H + 1;
     arc2H = constrain(arc2H, 30, 100);
     arcStop = PI + QUARTER_PI;
   }

}



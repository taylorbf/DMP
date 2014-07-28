

Bee bee1 = new Bee(-30);
Bee bee2 = new Bee(-15);
Bee bee3 = new Bee(0);
Bee bee4 = new Bee(15);
Bee bee5 = new Bee(21);
Bee bee6 = new Bee(43);
Bee bee7 = new Bee(50);
Bee bee8 = new Bee(65);
Bee bee9 = new Bee(80);
Bee bee10 = new Bee(100);
Bee bee11 = new Bee(120);
Bee bee12 = new Bee(135);
Bee bee13 = new Bee(150);
Bee bee14 = new Bee(170);
Bee bee15 = new Bee(173);
Bee bee16 = new Bee(180);
Bee bee17 = new Bee(210);
Bee bee18 = new Bee(240);
Bee bee19 = new Bee(260);
Bee bee20 = new Bee(280);
Bee bee21 = new Bee(300);
Bee bee22 = new Bee(320);
Bee bee23 = new Bee(335);
Bee bee24 = new Bee(340);
Bee bee25 = new Bee(370);
Bee bee26 = new Bee(380);
Bee bee27 = new Bee(400);
Bee bee28 = new Bee(430);
Bee bee29 = new Bee(436);
Bee bee30 = new Bee(450);
Bee bee31 = new Bee(470);
Bee bee32 = new Bee(485);
Bee bee33 = new Bee(520);
Bee bee34 = new Bee(530);
Bee bee35 = new Bee(531);
Bee bee36 = new Bee(537);
Bee bee37 = new Bee(540);
Bee bee38 = new Bee(550);
Bee bee39 = new Bee(560);
Bee bee40 = new Bee(570);


void setup(){
  size(600,600);
  noStroke();
}

void draw(){
  background(#585858);
  bee1.fly();
  bee2.fly();
  bee3.fly();
  bee4.fly();
  bee5.fly();
  bee6.fly();
  bee7.fly();
  bee8.fly();
  bee9.fly();
  bee10.fly();
  bee11.fly();
  bee12.fly();
  bee13.fly();
  bee14.fly();
  bee15.fly();
  bee16.fly();
  bee17.fly();
  bee18.fly();
  bee19.fly();
  bee20.fly();
  bee21.fly();
  bee22.fly();
  bee23.fly();
  bee24.fly();
  bee25.fly();
  bee26.fly();
  bee27.fly();
  bee28.fly();
  bee29.fly();
  bee30.fly();
  bee31.fly();
  bee32.fly();
  bee33.fly();
  bee34.fly();
  bee35.fly();
  bee36.fly();
  bee37.fly();
  bee38.fly();
  bee39.fly();
  bee40.fly();

}

class Bee {
 
 float x=0;
 float y=500;
 float speed=random(8);
 
 Bee(float setx){
   x = setx;
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
  
  y = y - speed;
}

}


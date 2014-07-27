Parrot leobird= new Parrot(-50);
Parrot andrewbird= new Parrot(100);
Parrot lindsaybird= new Parrot(250);
Parrot ayumibird= new Parrot(400);
Parrot benbird= new Parrot(550);

void setup(){
  size(1200,800);
  noStroke();
}

void draw(){
  background(#D8BA8A);
  leobird.fly();
  andrewbird.fly();
  lindsaybird.fly();
  ayumibird.fly();
  benbird.fly();
  
}
class Parrot{
  
  float x=0;
  float y=0;
  float speed= random(5);
  
  Parrot(float sety){
    y=sety;
  }
  
  void fly(){//draw up in the .fly
  pushMatrix();
  translate(x,y);
  scale(0.5, 0.5);
  fill(#356A86);
  triangle(30,250,150,280,150,250);
  fill(#BBEAE9, 100);
  arc(289,250,300,300,0,PI);
  fill(#85D8B5, 100);
  arc(260,250,240,240,0,PI);
  fill(#51AFE0, 100);
  arc(230,250,190,190,0,PI);
  translate(260,0);
  fill(#4EABC1,100);
  ellipse(150,210,120,120);
  fill(#A27F45,100);
  triangle(200,190,200,220,250,210);
  fill(#203131);
  ellipse(185,190,20,20);
  translate(-260,0);
  fill(#A27F45);
  rect(290,400,10,60);
  fill(#A27F45);
  rect(270,460,50,10);
  popMatrix();
  
  x += speed;
  }
}


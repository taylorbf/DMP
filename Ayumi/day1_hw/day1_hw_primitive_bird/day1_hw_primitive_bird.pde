void setup(){
  size(600,600);
  background(#D8BA8A);
  noStroke();
  smooth();
  
}

void draw(){
  fill(#356A86);
  triangle(430,250,430,280,540,250);
  fill(#BBEAE9, 100);
  arc(289,250,300,300,0,PI);
  fill(#85D8B5, 100);
  arc(330,250,240,240,0,PI);
  fill(#51AFE0, 100);
  arc(370,250,190,190,0,PI);
  fill(#4EABC1,100);
  ellipse(150,210,120,120);
  fill(#A27F45,100);
  triangle(200,190,200,220,250,210);
  fill(#203131);
  ellipse(185,190,20,20);
  fill(#A27F45);
  rect(290,400,10,60);
  fill(#A27F45);
  rect(270,460,50,10);

}

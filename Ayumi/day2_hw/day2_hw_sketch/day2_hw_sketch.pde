
void setup(){
  size(600,600);
  background(#195A5A);
  smooth();
  noStroke();
}

void draw(){
  fill(#195A5A,20);
  rect(0,0,width,height);
  fill(#92CB75,10);
  for(int i=0; i<27; i=i+1){
     triangle(i*20+20,600,i*20+40,60,i*20+60,600);
     if(i>=8){
       fill(#ADE589, 10);
     }
     if(i>=17){
      fill(#C8E860,10);
     }
  }
 }
 
 void mouseMoved(){
   fill(#ffffff);
   ellipse(mouseX,mouseY,8,8);
 }
 void mousePressed(){
   fill(#ffffff,200);
   ellipse(mouseX,mouseY,30,30); 
 }

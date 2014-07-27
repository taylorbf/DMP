void setup(){
  size(400,400);
  background(255);
}

void draw(){
 // fill(255);
 // rect(0,0,width,height);
for(float i=0; i<10; i=i+1){
  
fill(random(255),random(255),random(255));
  noStroke();
  ellipse(mouseX+i*20,mouseY,20,20);
  }
  
}

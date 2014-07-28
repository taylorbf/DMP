


void setup(){
  size(600,600);
}

void draw(){
  fill(#ffffff,20);
  rect(0,0,width,height);
  fill(#A2F20F);
  noStroke();
  ellipse(x,y,100,100);
  
  y = y + incY;
  x = x + incX;
  
  if(y >= 550 || y <= 50){
    incY = incY * -1;
  }
  
   if(x >= 550 || x <= 50){
    incX = incX * -1;
  }
  
}

void bounce(float x, float y, float incX, float incY, String hex){

  
  fill(hex);
  noStroke();
  ellipse(x,y,100,100);
  
  y = y + incY;
  x = x + incX;
  
  if(y >= 550 || y <= 50){
    incY = incY * -1;
  }
  
   if(x >= 550 || x <= 50){
    incX = incX * -1;
  }
}

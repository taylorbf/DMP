// trippy box

float a = 0.0;
float b = 250.0;
float incX = TWO_PI/25.0;
float inc = 10;


void setup(){
  size(1000,800);
  //frameRate(60);
  
}

void draw(){
  fill(#1E1CD6,20);
  rect(0,0,width,height);
  
  fill(#E01261);
  noStroke();
  
  ellipse(b, 400+sin(a)*200.0, 200, 200 );
  a = a + incX;
  b += inc;
   
   if(b >= 750 || b <= 250){
     inc = inc * -1;
  }

}
  
  


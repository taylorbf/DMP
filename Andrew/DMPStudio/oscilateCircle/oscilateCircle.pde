// trippy box

float a = 0.0;
float b = 0.0;
float incX = TWO_PI/25.0;
float inc = 10;


void setup(){
  size(1000,800);
  //frameRate(60);
  
}

void draw(){
  fill(#1E1CD6,1);
  rect(0,0,width,height);
  
  fill(#E01261);
  //noStroke();
  
  ellipse(500+sin(a)*500.0, b, 200, 200 );
  a = a + incX;
  b += inc;
   
   if(b >= 798 || b <= 0){
     inc = inc * -1;
  }

}
  
  


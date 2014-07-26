// trippy box

float a = 0.0;
float b = 0.0;
float incX = TWO_PI/25.0;


void setup(){
  size(1000,800);
  noSmooth();
}

void draw(){
  fill(#ffffff,200);
  rect(0,0,width,height);
  
  fill(#E01261);
  //noStroke();
  while(b <= 500){
    ellipse(500+sin(a)*40.0, b, 100, 100 );
    a = a + incX;
    b++;
  }
   
   if(b > 498){
     b = 0;
  }

}
  
  


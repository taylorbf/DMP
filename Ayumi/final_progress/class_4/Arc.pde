
Arc myArc = new Arc();

class Arc{
  float x = 80;
  float y = 70;
  float w = 100;
  float h = 35;
  float arcStop = PI;
  float yinc = 1;
  float xinc = 0.2;
   
  void move(){
    arc(x,y,w,h,0,arcStop);
    
    y += yinc;
    if (y>=200 || y<=60){
      yinc *= -0.5;
    }
    
    x += yinc;
    if (x>=160 || x<=100){
      xinc *= -1;
    }
  }
}
 

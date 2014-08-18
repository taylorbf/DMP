
Arc myArc = new Arc(0,0,1,1);
Arc myArc2 = new Arc(250,0,5,0.5);
Arc myArc3 = new Arc(500,0,2,0.1);
Arc myArc4 = new Arc(0,200,0.5,0.5);
Arc myArc5 = new Arc(250,250,1,1);
Arc myArc6 = new Arc(500,250,0.1,0.5);
Arc myArc7 = new Arc(0,500,0.1,0.1);
Arc myArc8 = new Arc(250,500,0.5,0.5);
Arc myArc9 = new Arc(600,500,0.1,0.2);

class Arc{
  float x = 100;
  float y = 100;
  float w = 100;
  float h = 35;
  float arcStop = PI;
  float incx = 0;
  float incy = 0;

  //translate x and traslate y
  float tx = 0;
  float ty = 0;
  
  float set_incx = 0;
  float set_incy = 0;
  
  Arc(float set_tx, float set_ty, float set_incx, float set_incy){
    tx = set_tx;
    ty = set_ty;
    incx = set_incx;
    incy = set_incy;
  }
  
   
  void move(){
    arc(x+tx,y+ty,w,h,0,arcStop);
    
    y += incy;
    if (y>=150 || y<=80){
      incy *= -1;
    }
    
    x += incy;
    if (x>=160 || x<=50){
      incx *= -1;
    }
  }
}
 
